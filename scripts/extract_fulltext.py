#!/usr/bin/env python3
"""Extract plain-text full text from JATS XML for search indexing.

For every data/JATS/<PMCID>.xml that has a <body> (i.e. the publisher
allows XML redistribution of the full text, not just front matter),
runs pandoc to extract clean plain text to fulltext/<PMCID>.txt.

fulltext/ is a regenerable build artifact (gitignored, not committed) --
run this before `hugo build`/`hugo server`. Requires `pandoc` on PATH.

Run with: uv run scripts/extract_fulltext.py
"""

import shutil
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
JATS_DIR = ROOT / "data" / "JATS"
FULLTEXT_DIR = ROOT / "fulltext"


def pandoc_command() -> list[str]:
    """Prefer a standalone `pandoc` on PATH; fall back to `quarto pandoc`
    (some dev machines only have the copy bundled with Quarto)."""
    if shutil.which("pandoc"):
        return ["pandoc"]
    if shutil.which("quarto"):
        return ["quarto", "pandoc"]
    raise RuntimeError("Neither `pandoc` nor `quarto` found on PATH")


def main():
    FULLTEXT_DIR.mkdir(exist_ok=True)
    pandoc = pandoc_command()

    n_extracted = 0
    n_skipped_no_body = 0

    for jats_path in sorted(JATS_DIR.glob("*.xml")):
        pmcid = jats_path.stem
        data = jats_path.read_bytes()
        if b"<body" not in data:
            n_skipped_no_body += 1
            continue

        out_path = FULLTEXT_DIR / f"{pmcid}.txt"
        result = subprocess.run(
            [*pandoc, "-f", "jats", "-t", "plain", str(jats_path), "-o", str(out_path)],
            capture_output=True,
            text=True,
        )
        if result.returncode != 0:
            print(f"  ERROR extracting {pmcid}: {result.stderr.strip()}")
            continue
        n_extracted += 1
        print(f"  {pmcid}: {out_path.stat().st_size} bytes")

    print()
    print("Summary:")
    print(f"  full text extracted: {n_extracted}")
    print(f"  skipped, no <body> in JATS: {n_skipped_no_body}")


if __name__ == "__main__":
    main()
