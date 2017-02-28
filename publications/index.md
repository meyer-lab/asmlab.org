---
layout: page
title: Publications
---

### Forthcoming

**Model-Driven Design of TAM Receptor Inhibitors Reveals the Logic of Family Member Specialization.** Edward J. Richards, Aaron S. Meyer.

**Dynamic signaling activation heterogeneity drives lung cancer persistence to targeted therapies.** Simin Manole, Song Yi Bae, Aaron S. Meyer.

**Dissecting FcγR Regulation Through a Multivalent Binding Model.** Ryan A. Robinett, Ning Guan, Aaron S. Meyer.

**Apoptotic Cell Bodies Elicit Gas6-mediated Migration of AXL-expressing Tumor Cells.** Annelien Zweemer, Cory B. French, Joshua Mesfin, Simon Gordonov, Aaron S. Meyer, Douglas A. Lauffenburger. *Submitted. Under revision.*

<br />

### Published

{% bibtex /publications/_style /publications/pubs.bib %}


<script>var bqs = document.getElementsByTagName("blockquote");
for(var i = 0; i < bqs.length; i++) {
  bqs[i].style.display = "none";
  var ab = document.createElement('a');
  ab.setAttribute('href', '#');
  ab.setAttribute('onClick', 'toggleBq('+i+'); return false;');
  ab.appendChild(document.createTextNode("[abstract]"));
  bqs[i].parentNode.insertBefore(ab,bqs[i]);
}
function toggleBq(i) {
  if (bqs[i].style.display == "none")
    bqs[i].style.display = "block";
  else
    bqs[i].style.display = "none";
}</script>
