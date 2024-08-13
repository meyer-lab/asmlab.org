---
layout: page
title: Team
---
<img src="/public/photos/group2023.webp" width="100%" alt="Group photo from Marc's defense celebration." class="center" />

<div class="span_3 right"><img src="/public/photos/aaron.jpg" width="150px" alt="Aaron's picture" /></div>

### Aaron Meyer, Principal Investigator&nbsp;&nbsp;&nbsp;<a href="https://ameyer.me"><svg class="svg-icon"><use xlink:href="#fa-home"></use></svg></a> <a href="https://github.com/aarmey"><svg class="svg-icon"><use xlink:href="#fa-github"></use></svg></a> <a href="https://mstdn.science/@aarmey"><svg class="svg-icon"><use xlink:href="#fa-mastadon"></use></svg></a> <a href="https://www.twitter.com/aarmey"><svg class="svg-icon"><use xlink:href="#fa-twitter"></use></svg></a> <a href="https://orcid.org/0000-0003-4513-1840"><svg class="svg-icon"><use xlink:href="#fa-orcid"></use></svg></a> <a href="mailto:ameyer@ucla.edu"><svg class="svg-icon"><use xlink:href="#fa-envelope"></use></svg></a>    
Ph. D., Biological Engineering, MIT    
B.S., Bioengineering, University of California, Los Angeles       

Aaron is an Associate Professor of [Bioengineering](https://www.bioeng.ucla.edu) and a member of the [Bioinformatics IDP](https://bioinformatics.ucla.edu), [Jonsson Comprehensive Cancer Center](https://cancer.ucla.edu), [Broad Stem Cell Research Center](https://stemcell.ucla.edu), and [Institute for Quantitative and Computational Biosciences](https://qcb.ucla.edu). He strives to learn how we can use computational models to control biological systems and treat disease. Outside of the lab, he can be found consuming anything that might be considered science fiction, reading about the philosophy/history of science, or cycling in the Santa Monica mountains.

<br />

<div class="span_3 right"><img src="/public/photos/ctan.jpg" width="150px" alt="Cyrillus's picture" /></div>
### Cyrillus Tan, Graduate Student&nbsp;&nbsp;&nbsp;<a href="https://github.com/cyrillustan"><svg class="svg-icon"><use xlink:href="#fa-github"></use></svg></a>  <a href="mailto:cytan@g.ucla.edu"><svg class="svg-icon"><use xlink:href="#fa-envelope"></use></svg></a>      
B.S. Biology & Computer Science, Emory University  

Cyrillus is a Bioinformatics Ph.D. student. His research interests include developing computational methods and models to understand biological systems. Aspiring traveler, amateur musician, financial analyst with no actual experience, know-it-all wannabe.

<br />

<div class="span_3 right"><img src="/public/photos/jacksonc.jpg" width="150px" alt="Jackson's picture" /></div>
### Jackson Chin, Graduate Student&nbsp;&nbsp;&nbsp;<a href="https://github.com/JacksonLChin"><svg class="svg-icon"><use xlink:href="#fa-github"></use></svg></a>      
B.S. Bioengineering, University of Washington

Jackson is a Ph.D. student who joined the lab during Fall 2020. He joins the lab from Pacific Northwest National Laboratory where he researched using metabolomics to predict type 1 diabetes onset. Jackson’s research interests include applying and developing tensor-based methods to unravel the mechanisms of disease. Outside of lab, Jackson is an avid soccer fan, board game collector, burrito connoisseur, and foodie.

<br />

<div class="span_3 right"><img src="/public/photos/andrewr.webp" width="150px" alt="Andrew's picture" /></div>
### Andrew Ramirez, Graduate Student&nbsp;&nbsp;&nbsp;<a href="https://github.com/andrewram4287"><svg class="svg-icon"><use xlink:href="#fa-github"></use></svg></a> <a href="https://orcid.org/0009-0006-5746-9477"><svg class="svg-icon"><use xlink:href="#fa-orcid"></use></svg></a>      
B.S. Chemical Engineering, University of California, Davis

Andrew is a Bioengineering Ph.D. student who joined in Fall 2021. In his free time, Andrew is an avid Netflix/Hulu watcher for shows like Modern Family, Dragon Ball Z, and Parks and Recreation, loves boba, and enjoys walking his pitbull Misty.

<br />

<div class="span_3 right"><img src="/public/photos/mloui.webp" width="150px" alt="Michelle's picture" /></div>
### Michelle Loui, Graduate Student      
M.S., Biomedical Engineering, Arizona State University  
B.S.E., Biomedical Engineering, Arizona State University

Michelle joined the lab in Spring 2022 as a bioengineering Ph.D. student. During her earlier studies, she worked on developing an injectable polymer for treating cerebral aneurysms and researched the extreme properties of amyloid materials through individual fibril analysis. Her research interests include therapeutic resistance in cancer. Outside of the lab, Michelle enjoys playing Animal Crossing and Mario Kart, consuming sweets, and volunteering at the West LA animal shelter.

<br />

<div class="span_3 right"><img src="/public/photos/meera.webp" width="150px" alt="Meera's picture" /></div>
### Meera Trisal, Graduate Student      
B.S., Biological Sciences, University of California, Santa Barbara  

Meera is an Ph.D. student who joined the lab in Fall 2022. Before coming to UCLA, Meera worked at Stanford University where she studied the mechanisms underlying the adaptive immune response to vaccination. In her free time, Meera enjoys spending time with friends, reading, playing soccer, dancing, and binge-watching TV.

<br />
<br />


{% for person in site.data.team %}
{% if person.current %}
<div class="span_3 right"><img src="/public/photos/{{ person.photo }}" alt="{{ person.name }}'s picture" /></div>
### {{ person.name }}, {{ person.position }}      

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

#### Linnet Chang, Undergraduate Researcher (currently Analyst, Accenture)

#### Eli Snyder, Undergraduate Researcher (currently M.D. student, University of Hawaii)

#### Stephen Lees, Undergraduate Researcher (currently Ph.D. student, [Biomedical Engineering, University of Virginia](https://engineering.virginia.edu/departments/biomedical-engineering))

#### Edward Richards, Postdoctoral Associate (currently Associate Principal Scientist, AstraZeneca)

#### Zoe Kim, Undergraduate Researcher

#### Robert Theisen, Undergraduate Researcher (currently Ph.D. student, [Biomedical Engineering, University of Michigan](https://bme.umich.edu))

#### Micah Bryant, Undergraduate Researcher

#### Alison Tran, Undergraduate Researcher (currently Account Manager, Thermo Fisher)

#### Heather Carmen Mercieca, Amgen Scholar

#### Moriah Garcia, Development Engineer (currently Project Manager, [Genentech](https://www.gene.com))

#### Song Yi Bae, Postdoctoral Fellow (currently Senior Scientist, Astrin Biosciences)

#### Katrina Warner, Amgen Scholar (currently Ph.D. student, [Biomedical Sciences, Harvard](https://gsas.harvard.edu/programs-of-study/all/biological-and-biomedical-sciences))

#### Donya Khashayar, UCLA Transfer Student Summer Research Program

#### Rui Yan, Undergraduate Researcher (currently M.S./Ph.D. student, [ICME, Stanford](https://icme.stanford.edu))

#### Ali Farhat, Undergraduate Researcher (currently M.D./Ph.D. student, [University of Illinois College of Medicine-Chicago](https://chicago.medicine.uic.edu/education/masters-and-doctorate-programs/medical-scientist-training-program/))

#### Adam Weiner, Undergraduate Researcher (currently Ph.D. student, [Tri-Institute CompBio](https://compbio.triiprograms.org/))

#### Annelien Zweemer, Postdoctoral Fellow (currently [Assistant Professor, Leiden University](https://www.universiteitleiden.nl/en/staffmembers/annelien-zweemer))

#### Ryan Robinett, Undergraduate Researcher (currently Ph.D. student, Computer Science, University of Chicago)

#### Ning Guan, Undergraduate Researcher (currently Ph.D. student, [Systems Biology, Harvard](https://sysbio.med.harvard.edu))

#### Simin Manole, Technical Assistant (currently Ph.D. student, [Mol & Cell Biol, U Mass Amherst](https://gpls.cns.umass.edu/mcb))

#### Christina Bray, Undergraduate Researcher

#### Nicole Kramer, Undergraduate Researcher (currently Postdoctoral Research Associate, Bioinformatics and Computational Biology, UNC at Chapel Hill)
