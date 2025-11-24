---
layout: page
title: Team
---
<img src="/public/photos/group2023.webp" width="100%" alt="Group photo from Marc's defense celebration." class="center" />

<div class="span_3 right"><img src="/public/photos/ameyer.webp" width="150px" alt="Aaron's photo" /></div>

### Aaron Meyer, Principal Investigator&nbsp;&nbsp;&nbsp;<a href="https://ameyer.me"><svg class="svg-icon"><use xlink:href="#fa-home"></use></svg></a> <a href="https://github.com/aarmey"><svg class="svg-icon"><use xlink:href="#fa-github"></use></svg></a> <a href="https://mstdn.science/@aarmey"><svg class="svg-icon"><use xlink:href="#fa-mastadon"></use></svg></a> <a href="https://orcid.org/0000-0003-4513-1840"><svg class="svg-icon"><use xlink:href="#fa-orcid"></use></svg></a> <a href="mailto:ameyer@ucla.edu"><svg class="svg-icon"><use xlink:href="#fa-envelope"></use></svg></a>    
Ph. D., Biological Engineering, MIT    
B.S., Bioengineering, University of California, Los Angeles       

Aaron is an Associate Professor of [Bioengineering](https://www.bioeng.ucla.edu) and a member of the [Bioinformatics IDP](https://bioinformatics.ucla.edu), [Jonsson Comprehensive Cancer Center](https://www.uclahealth.org/cancer), [Broad Stem Cell Research Center](https://stemcell.ucla.edu), and [Institute for Quantitative and Computational Biosciences](https://qcb.ucla.edu). He strives to learn how we can use computational models to control biological systems and treat disease. Outside of the lab, he can be found consuming anything that might be considered science fiction, reading about the philosophy/history of science, or cycling in the Santa Monica mountains.

<br />


{% for person in site.data.team %}
{% if person.current %}
<div class="span_3 right"><img src="/public/photos/{{ person.photo }}" alt="{{ person.name }}'s photo" /></div>
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

<div id="alumni-filter-buttons">
  <button class="filter-btn" onclick="filterAlumni('Undergraduate Researcher', this)">Undergraduate Students</button>
  <button class="filter-btn" onclick="filterAlumni(['Amgen Scholar', 'Bruins in Genomics Summer Research Program', 'NCI CSBC Summer Scholar', 'UCLA Transfer Student Summer Research Program'], this)">Summer Scholars</button>
  <button class="filter-btn" onclick="filterAlumni(['Ph.D. Student', 'M.S. Student'], this)">Graduate Students</button>
  <button class="filter-btn" onclick="filterAlumni(['Postdoctoral Associate', 'Postdoctoral Fellow'], this)">Postdoctoral Associates</button>
  <button class="filter-btn" onclick="filterAlumni(['Development Engineer', 'Technical Assistant'], this)">Staff</button>
</div>

<div id="alumni-list">
{% assign sorted_people = site.data.team | sort: "joined" | reverse %}

{% for person in sorted_people %}
{% unless person.current %}
<div class="alumni-member" data-position="{{ person.position }}" style="display: none;">
<h4>{{ person.name }}, {{ person.position }} {% if person.postposition %} (currently {{ person.postposition }}) {% endif %}</h4>
</div>
{% endunless %}
{% endfor %}
</div>

<script>
function filterAlumni(positions, buttonEl) {
  // Update active button
  document.querySelectorAll('#alumni-filter-buttons .filter-btn').forEach(button => {
    button.classList.remove('active');
  });
  buttonEl.classList.add('active');

  const positionsToShow = Array.isArray(positions) ? positions : [positions];

  // Filter members
  document.querySelectorAll('#alumni-list .alumni-member').forEach(member => {
    const memberPosition = member.dataset.position;
    const shouldShow = positionsToShow.includes(memberPosition);
    member.style.display = shouldShow ? 'block' : 'none';
  });
}
</script>

<style>
#alumni-filter-buttons .filter-btn {
  margin: 5px;
  padding: 8px 12px;
  cursor: pointer;
  border: 1px solid #ccc;
  background-color: #f0f0f0;
  border-radius: 5px;
}
#alumni-filter-buttons .filter-btn.active {
  background-color: #ddd;
  font-weight: bold;
}
</style>
