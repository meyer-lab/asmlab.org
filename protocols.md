---
layout: default
title: Protocols
---

<section class="archive">

<h2> Protocols </h2>

Protocols and other links for resources within the lab.

{% for post in site.categories.protocols %}

  <article class="row gutters">
    <a href="{{ site.baseurl }}{{ post.url }}" title="{{ post.title }}" class="col span_8">{{ post.title }}</a>
    <div class="post-date col span_4">
      <time datetime="{{ post.date | date: '%Y-%m-%d' }}">{{ post.date | date: "%-d %B %Y" }}</time>
    </div>
  </article>

{% endfor %}
</section>


<section class="archive">

## Links
  
  - [Lab meeting schedule](https://syno.seas.ucla.edu/drive/oo/r/450933481663373314)
  - [Common expectations](/team/expectations/common.html)
    - [Getting started](/team/expectations/setup.html)
      - [Computational projects](/team/computational_start.html)
    - [Undergraduate students](/team/expectations/ugrad.html)
    - [Graduate students](/team/expectations/grad.html)
    - [Technical associates](/team/expectations/tech.html)
    - [Postdoctoral associates](/team/expectations/postdoc.html)
  - [Github page](https://github.com/meyer-lab/)
  - [Misc lab documents](https://github.com/meyer-lab/misc-docs)
  - [Equipment documentation](https://syno.seas.ucla.edu/drive/d/s/413621497437887399/lUYb4tR1Tm8NOC6FRuwcwmtNvPWoe3ea-KSWA33oChQY_)
  - [Email list](https://groups.google.com/forum/#!forum/asmlab)

</section>

<section class="archive">

## Safety

[Department Injury and Illness Prevention Program (IIPP) Manual)](http://www.bioeng.ucla.edu/dept-iipp/)

</section>
