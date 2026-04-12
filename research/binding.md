---
layout: page
title: Multivalent Binding Modeling Publications
---

{% assign binding_refs = site.data.pubs.references | where_exp: "ref", "ref.keyword contains 'binding'" | sort: "issued" | reverse %}
<dl>
{% for ref in binding_refs %}
{% include pubentry.html ref=ref %}
{% endfor %}
</dl>
