---
layout: page
title: Team
---
<img src="/public/photos/group2023.webp" width="100%" alt="Group photo from Marc's defense celebration." class="center" />

<div class="span_3 right"><img src="/public/photos/aaron.jpg" width="150px" alt="Aaron's picture" /></div>

### Aaron Meyer, Principal Investigator&nbsp;&nbsp;&nbsp;<a href="https://ameyer.me"><svg class="svg-icon"><use xlink:href="#fa-home"></use></svg></a> <a href="https://github.com/aarmey"><svg class="svg-icon"><use xlink:href="#fa-github"></use></svg></a> <a href="https://mstdn.science/@aarmey"><svg class="svg-icon"><use xlink:href="#fa-mastadon"></use></svg></a> <a href="https://orcid.org/0000-0003-4513-1840"><svg class="svg-icon"><use xlink:href="#fa-orcid"></use></svg></a> <a href="mailto:ameyer@ucla.edu"><svg class="svg-icon"><use xlink:href="#fa-envelope"></use></svg></a>    
Ph. D., Biological Engineering, MIT    
B.S., Bioengineering, University of California, Los Angeles       

Aaron is an Associate Professor of [Bioengineering](https://www.bioeng.ucla.edu) and a member of the [Bioinformatics IDP](https://bioinformatics.ucla.edu), [Jonsson Comprehensive Cancer Center](https://cancer.ucla.edu), [Broad Stem Cell Research Center](https://stemcell.ucla.edu), and [Institute for Quantitative and Computational Biosciences](https://qcb.ucla.edu). He strives to learn how we can use computational models to control biological systems and treat disease. Outside of the lab, he can be found consuming anything that might be considered science fiction, reading about the philosophy/history of science, or cycling in the Santa Monica mountains.

<br />


{% for person in site.data.team %}
{% if person.current %}
<div class="span_3 right"><img src="/public/photos/{{ person.photo }}" alt="{{ person.name }}'s picture" /></div>
### {{ person.name }}, {{ person.position }}&nbsp;&nbsp;&nbsp;{% if person.homepage %} <a href="{{ person.homepage }}"><svg class="svg-icon"><use xlink:href="#fa-home"></use></svg></a>{% endif %}{% if person.orcid %} <a href="https://orcid.org/{{ person.orcid }}"><svg class="svg-icon"><use xlink:href="#fa-orcid"></use></svg></a>{% endif %}{% if person.github %} <a href="https://github.com/{{ person.github }}"><svg class="svg-icon"><use xlink:href="#fa-github"></use></svg></a>{% endif %}      
{% if person.degrees %}
{% for degree in person.degrees %}
{{ degree }}
{% endfor %}  
{% endif %}

{% if person.description %}{{ person.description }}{% endif %}
<br />
<br />
<br />
<br />
{% endif %}
{% endfor %}

# Former Members

{% for person in site.data.team %}
{% unless person.current %}
#### {{ person.name }}, {{ person.position }} {% if person.postposition %} (currently {{ person.postposition }}) {% endif %}
{% endunless %}
{% endfor %}

#### Annelien Zweemer, Postdoctoral Fellow (currently [Assistant Professor, Leiden University](https://www.universiteitleiden.nl/en/staffmembers/annelien-zweemer))

#### Ryan Robinett, Undergraduate Researcher (currently Ph.D. student, Computer Science, University of Chicago)

#### Ning Guan, Undergraduate Researcher (currently Ph.D. student, [Systems Biology, Harvard](https://sysbio.med.harvard.edu))

#### Simin Manole, Technical Assistant (currently Ph.D. student, [Mol & Cell Biol, U Mass Amherst](https://gpls.cns.umass.edu/mcb))

#### Christina Bray, Undergraduate Researcher

#### Nicole Kramer, Undergraduate Researcher (currently Postdoctoral Research Associate, Bioinformatics and Computational Biology, UNC at Chapel Hill)
