///////////////////////////////
// modernpro-cv.typ
// A CV template with modern Sans font and professional look
// Copyright (c) 2024
// Author:  Jiaxin Peng
// License: MIT
// Version: 1.0.2
// Date:    2024-10-21
// Email:   jiaxin.peng@outlook.com
///////////////////////////////

// Define the colour scheme
#let date-colour = rgb("#000000")
#let primary-colour = rgb("#000000")
#let headings-colour = rgb("#000000")
#let subheadings-colour = rgb("#000000")

// Section Headings (Education, Experience, etc)
#let section(title) = {
  text(12pt, fill: headings-colour, weight: "bold")[
    #upper[#title]
    #v(-8pt)
    #line(length: 100%)
    #v(-5pt)
  ]
}

// Subsection Headings (institution, Company, etc)
#let subsection(content) = {
  text(11pt, fill: subheadings-colour, weight: "bold")[#content]
}

// Education part
#let education(institution: "", major: "", date: "", location: "", description: "") = {
  text(11pt, fill: subheadings-colour, weight: "bold")[#institution, #location]
  h(1fr)
  text(11pt, style: "italic", fill: headings-colour, weight: "regular")[#date \ ]
  text(11pt, style: "italic", fill: subheadings-colour, weight: "medium")[#major \ ]
  if description != [] or description != "" {
    text(11pt, fill: primary-colour, weight: "regular")[#description]
  }
}

// Job title
#let job(position: "", institution: "", location: "", date: "", description: "") = {
  text(11pt, fill: subheadings-colour, weight: "semibold")[#position]
  h(1fr)
  text(11pt, style: "italic", fill: headings-colour, weight: "regular")[#location \ ]
  text(11pt, style: "italic", fill: subheadings-colour, weight: "medium")[#institution]
  h(1fr)
  text(11pt, style: "italic", fill: headings-colour, weight: "regular")[#date]
  if description != [] or description != "" {
    text(11pt, fill: primary-colour, weight: "regular")[#description]
  }
}

#let award(award: "", institution: "", date: "") = {
  [#text(11pt, fill: primary-colour, weight: "medium")[#award,] #text(
      11pt,
      fill: primary-colour,
      weight: "regular",
    )[#emph(institution)] #h(1fr) #text(11pt, fill: primary-colour, weight: "regular")[#emph(date)\ ]]
}

// show contact details
#let contact-display(contacts) = {
  v(-5pt)
  set text(10pt, fill: headings-colour, weight: "regular")
  contacts
    .map(contact => {
        if ("link" in contact) {
          link(contact.link)[#contact.text]
        } else {
          [#contact.text]
        }
      })
    .join(" | ")
}

#let cv-single(
  font-type: "Times New Roman",
  continue-header: "false",
  name: "",
  address: "",
  lastupdated: "true",
  pagecount: "true",
  date: none,
  contacts: (),
  mainbody,
) = {
  set text(font: font-type, weight: "regular")
  set cite(form: "full")

  if date == none {
    let date = [#datetime.today().display()]
  }

  // last update
  let lastupdate(lastupdated, date) = {
    if lastupdated == "true" {
      set text(8pt, style: "italic", fill: primary-colour, weight: "light")
      [Last updated: #date]
    }
  }

  set page(footer: [
    #lastupdate(lastupdated, date)
    #h(1fr)
    #text(9pt, style: "italic", fill: primary-colour, weight: "light")[#name]
    #h(1fr)
    #if pagecount == "true" {
      text(
        9pt,
        style: "italic",
        fill: primary-colour,
        weight: "light",
      )[Page #context {
        counter(page).display("1 / 1", both: true)
      }]
    }
  ])

  if continue-header == "true" {
    set page(
      margin: (left: 1.25cm, right: 1.25cm, top: 2.5cm, bottom: 1.5cm),
      header: {
        text(
          20pt,
          fill: primary-colour,
          weight: "bold",
          top-edge: "baseline",
          bottom-edge: "baseline",
          baseline: 11pt,
        )[#align(center, [#name])]
        // address
        if address != none {
          v(3pt)
          text(
            11pt,
            fill: primary-colour,
            weight: "regular",
            top-edge: "baseline",
            bottom-edge: "baseline",
            baseline: 2pt,
          )[#align(center, [#address])]
        }
        v(2pt)
        align(center)[#contact-display(contacts)]
      },
      header-ascent: 1em,
    )
    mainbody
  } else {
    set page(margin: (left: 1.25cm, right: 1.25cm, top: 1cm, bottom: 1cm))
    text(
      20pt,
      fill: primary-colour,
      weight: "bold",
      top-edge: "baseline",
      bottom-edge: "baseline",
      baseline: 11pt,
    )[#align(center, [#name])]
    // address
    if address != none {
      v(3pt)
      text(
        11pt,
        fill: primary-colour,
        weight: "regular",
        top-edge: "baseline",
        bottom-edge: "baseline",
        baseline: 2pt,
      )[#align(center, [#address])]
    }
    v(2pt)
    align(center)[#contact-display(contacts)]
    // line(length: 100%, stroke: 0.5pt + primary-colour)
    mainbody
  }
  //Main Body
}
