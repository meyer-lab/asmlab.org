#!/usr/bin/env python3
"""Fetch JATS full-text XML from PMC for publications in data/pubs.yaml.

Resolves PMIDs to PMCIDs via NCBI's ID Converter API, downloads the JATS
XML for each via efetch, saves it to data/JATS/<PMCID>.xml, and removes
the now-redundant `abstract` field from pubs.yaml (only when the fetched
JATS actually contains an abstract).

Run with: uv run --with ruamel.yaml scripts/fetch_jats.py
"""

import json
import re
import time
import urllib.parse
import urllib.request
from pathlib import Path

from ruamel.yaml import YAML

ROOT = Path(__file__).resolve().parent.parent
PUBS_YAML = ROOT / "data" / "pubs.yaml"
JATS_DIR = ROOT / "data" / "JATS"

IDCONV_URL = "https://pmc.ncbi.nlm.nih.gov/tools/idconv/api/v1/articles/"
EFETCH_URL = "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi"
USER_AGENT = "asmlab-site (mailto:claude@ameyer.me)"
REQUEST_DELAY = 0.4


def http_get(url: str) -> bytes:
    req = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(req, timeout=20) as resp:
        return resp.read()


def resolve_pmcids(pmids: list[str]) -> dict[str, str]:
    if not pmids:
        return {}
    ids = ",".join(pmids)
    url = f"{IDCONV_URL}?{urllib.parse.urlencode({'ids': ids, 'format': 'json', 'tool': 'asmlab-site', 'email': 'claude@ameyer.me'})}"
    data = json.loads(http_get(url))
    mapping = {}
    for rec in data.get("records", []):
        if "pmcid" in rec:
            mapping[str(rec["pmid"])] = rec["pmcid"]
    return mapping


def fetch_jats(pmcid: str) -> bytes:
    url = f"{EFETCH_URL}?db=pmc&id={pmcid}&rettype=full&retmode=xml"
    return http_get(url)


def main():
    yaml = YAML()
    yaml.preserve_quotes = True
    yaml.indent(mapping=4, sequence=4, offset=2)
    yaml.width = 72

    with open(PUBS_YAML) as f:
        pubs = yaml.load(f)

    refs = pubs["references"]

    pmids_to_resolve = sorted({str(r["pmid"]) for r in refs if "pmid" in r and "pmcid" not in r})
    print(f"Resolving {len(pmids_to_resolve)} PMIDs to PMCIDs...")
    pmid_to_pmcid = resolve_pmcids(pmids_to_resolve)

    JATS_DIR.mkdir(parents=True, exist_ok=True)

    n_fetched = 0
    n_abstract_removed = 0
    n_skipped_no_pmcid = 0
    n_skipped_no_pmid = 0
    n_no_abstract_in_jats = 0

    for r in refs:
        pmcid = r.get("pmcid")
        if not pmcid:
            pmid = str(r.get("pmid", ""))
            if not pmid:
                n_skipped_no_pmid += 1
                continue
            pmcid = pmid_to_pmcid.get(pmid)
            if not pmcid:
                n_skipped_no_pmcid += 1
                continue

        jats_path = JATS_DIR / f"{pmcid}.xml"
        if jats_path.exists():
            data = jats_path.read_bytes()
        else:
            try:
                data = fetch_jats(pmcid)
            except Exception as e:
                print(f"  ERROR fetching {pmcid} (id={r.get('id')}): {e}")
                time.sleep(REQUEST_DELAY)
                continue
            jats_path.write_bytes(data)
            time.sleep(REQUEST_DELAY)

        r["pmcid"] = pmcid
        n_fetched += 1

        if b"<abstract" in data:
            if "abstract" in r:
                del r["abstract"]
                n_abstract_removed += 1
        else:
            n_no_abstract_in_jats += 1

        print(f"  {pmcid} ({r.get('id')}): {len(data)} bytes, abstract={'<abstract' in data.decode('utf-8', 'ignore')}")

    import io

    buf = io.StringIO()
    yaml.dump(pubs, buf)
    text = "\n".join(line.rstrip() for line in buf.getvalue().split("\n"))
    with open(PUBS_YAML, "w") as f:
        f.write(text)

    print()
    print("Summary:")
    print(f"  JATS fetched: {n_fetched}")
    print(f"  abstracts removed from pubs.yaml: {n_abstract_removed}")
    print(f"  entries with no abstract in JATS (left as-is): {n_no_abstract_in_jats}")
    print(f"  skipped, no PMCID resolved: {n_skipped_no_pmcid}")
    print(f"  skipped, no PMID at all: {n_skipped_no_pmid}")


if __name__ == "__main__":
    main()
