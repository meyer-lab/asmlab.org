#import "modernpro-cv.typ": *

#show: cv-single.with(
  font-type: "Liberation Sans",
  continue-header: "false",
  name: "Aaron S. Meyer",
  address: [],
  lastupdated: "true",
  pagecount: "true",
  date: "2024-12-30",
  contacts: (
    (text: [4121G Engineering V]),
    (text: [Los Angeles, CA 90095]),
    (text: [(310) 794-4821], link: "tel:1-310-794-4821"),
    (text: [ameyer\@ucla.edu], link: "mailto:ameyer@ucla.edu"),
    (text: [https://ameyer.me], link: "https://ameyer.me"),
  )
)



#section("Education")
#education(
  institution: [Massachusetts Institute of Technology],
  major: [Ph.D., Biological Engineering],
  date: "2009–2014",
  location: "Cambridge, MA",
  description: [
    - Thesis: Quantitative approaches to understanding signaling regulation of 3D cell migration
  ],
)

#education(
  institution: [University of California, Los Angeles],
  major: [B.S., Bioengineering, magna cum laude],
  date: "2005–2009",
  location: "CA"
)


////
// PROFESSIONAL EXPERIENCE
#section("Professional Experience")

#job(
  position: "Associate Professor",
  institution: "University of California, Los Angeles",
  location: "Los Angeles, CA",
  date: "2023–Present",
  description: [#linebreak() Bioengineering Department #linebreak() Bioinformatics Interdepartmental Graduate Program #linebreak() Computational & Systems Biology Interdepartmental Program]
)

#job(
  position: "Vice Chair of Graduate Studies",
  institution: "University of California, Los Angeles",
  location: "Los Angeles, CA",
  date: "2024–Present",
  description: [#linebreak() Bioengineering Department]
)

#job(
  position: "Co-Director, Amgen Scholars Program",
  institution: "University of California, Los Angeles",
  location: "Los Angeles, CA",
  date: "2024–Present"
)

#job(
  position: "Assistant Professor",
  institution: "University of California, Los Angeles",
  location: "Los Angeles, CA",
  date: "2017–2023"
)

#job(
  position: "Principal Investigator & Research Fellow",
  institution: "Massachusetts Institute of Technology",
  location: "Cambridge, MA",
  date: "2014–2017",
  description: [#linebreak() Koch Institute for Integrative Cancer Research]
)

#job(
  position: "Graduate Student Researcher",
  institution: "Massachusetts Institute of Technology",
  location: "Cambridge, MA",
  date: "2009–2014",
  description: [#linebreak() Department of Biological Engineering #linebreak() Koch Institute for Integrative Cancer Research]
)

#job(
  position: "Undergraduate Researcher",
  institution: "University of California, Los Angeles",
  location: "Los Angeles, CA",
  date: "2006–2009",
  description: [#linebreak() In the lab of Daniel Kamei]
)

#section("Awards & Recognitions")

_Diversity, Equity and Inclusion Award_, Society For Biomaterials #h(1fr) 2025

_Outstanding Mentor Award_, Bruins-In-Genomics #h(1fr) 2022, 2024

_Emerging Leader Award_, Mark Foundation for Cancer Research #h(1fr) 2023

_Northrop Grumman Excellence in Teaching Award_ #h(1fr) 2021

_Milstein Abstract Award_, Cytokine Society #h(1fr) 2021

_UCLA Hellman Fellow_ #h(1fr) 2019

_Career Awards at the Scientific Interface Finalist_, Burroughs Wellcome Fund #h(1fr) 2017

_Fellowship_, Terri Brodeur Breast Cancer Foundation #h(1fr) 2017

#link("http://www.amgenscholars.com/alumni/ten-to-watch")[_Ten to Watch_], Amgen Scholars Foundation #h(1fr) 2016

_Director's Early Independence Award_, National Institutes of Health #h(1fr) 2014 \
Highlighted by the NIH director's office (#link("https://directorsblog.nih.gov/2014/10/28/creative-minds-tackling-chemotherapy-resistance/")[link])

_Siebel Scholar, Class of 2014_ #h(1fr) 2013

#section("Publications")

#context [

#let authors = (
  "A. A. Abraham",
  "A. Abraham",
  "A. C. Weiner",
  "A. Castillo",
  "A. J. M. Zweemer",
  "A. M. Farhat",
  "A. Meyer",
  "A. Ramirez",
  "A. S. Meyer",
  "A. Zweemer",
  "B. Orcutt-Jahns",
  "B. Remigio",
  "B. T. Orcutt-Jahns",
  "C. Boixo",
  "C. Wilder",
  "E. C. Hung",
  "E. Hodzic",
  "E. Hung",
  "E. J. Richards",
  "E. Lin",
  "E. M. Snyder",
  "E. R. Bozich",
  "E. Richards",
  "F. Mohammadi",
  "H. S. Alpay",
  "J. E. Kay",
  "J. L. Chin",
  "J. Lagarde",
  "K. Warner",
  "L. Karginov",
  "M. Creixell",
  "M. Loui",
  "M. Murphy",
  "N. Guan",
  "N. Thomas",
  "P. C. Emmel",
  "P. Shrestha",
  "R. A. Robinett",
  "R. Yan",
  "S. D. Taylor",
  "S. D. Taylor",
  "S. Lees",
  "S. Manole",
  "S. Pascoe",
  "S. Taylor",
  "S. Visagan",
  "S. Y. Bae",
  "Z. C. Tan",
  "Z. S. Kim"
)
#show regex(authors.join("|")): strong

#bibliography("../_bibliography/pubs.bib", title: none, full: true, style: "./ieee.csl")

]



#section("Research Support")

_Contact PI on all grants unless indicated otherwise._

_NIH NIAID U01-AI179524 (Co-I)_ #h(1fr) 2024–2029 \
"Systems Analyses of Induction and Maintenance of Immunity to SARS-CoV-2 Vaccination in Kidney Transplant Recipients Receiving Mycophenolate Mofetil Immunotherapy"

_NSF 2404470 (Co-I)_ #h(1fr) 2024–2027 \
"Multi-analyte Detection Enabled by Machine Learning-Guided Voltammetry" \
Division: CHE Research and Development

_NIH NEI R01-EY011996 (Co-I)_ #h(1fr) 2023–2027 \
"Retinal Disease: Molecular Basis and Pathophysiology"

_NIH NIAID U19-AI172713 (Co-PI)_ #h(1fr) 2023–2028 \
Systems Biology for Infectious Diseases Consortium \
"Systems Epigenomics of Persistent Bloodstream Infection"

_Emerging Leader Award_, Mark Foundation for Cancer Research #h(1fr) 2023–2025 \
"Tracking and Reactivating Humoral Immunity through Systems Serology"

_SEEDS Grant_ #h(1fr) 2023–2024 \
Merck & Co., Inc. \
"Systematic and Receptor-Specific Dissection of Fc Receptor Functions"

_NIH NIAID P01-AI120944 (Co-I)_ #h(1fr) 2022–2027 \
Transplant Immunology Program Project Grant \
"Innate-Adaptive Immunoregulation in Liver Transplant Ischemia/Reperfusion Injury"

_COVID Relief Funds_, Vice Chancellor for Research Office #h(1fr) 2022

_Administrative Supplement to U01-CA215709_ #h(1fr) 2020–2021 \
"Mechanistic Autoencoders for Patient-Specific Phosphoproteomic Models"

_Grant_ #h(1fr) 2020–2022 \
Jayne Koskinas Ted Giovanis Foundation \
"Cell cycle-specific drug responses in breast cancer"

_American Cancer Society, Research Scholar Grant (co-I)_ #h(1fr) 2020–2023 \
"Tissue-engineered models of glioblastoma for evaluating treatment responses"

_NIH NIAID U01-AI148119_ #h(1fr) 2019–2024 \
Fc-Dependent Mechanisms of Antibody-Mediated Killing Consortium \
"Mapping the effector response space of antibody combinations"

_UCLA Faculty Career Development Award_ #h(1fr) 2019–2020 \

_UCLA Hellman Fellow_ #h(1fr) 2019–2020 \
"Engineering anti-tumor antibody combinations for more effective and less toxic therapies"

_Visterra, Inc. Research Agreement_ #h(1fr) 2019–2021 \
"IL-2 Receptor Binding Engineering"

_Administrative Supplement to U01-CA215709_ #h(1fr) 2018–2019 \
"Cell lineage analysis to quantify heterogeneous cell cycle responses of cancer cells"

_NIH NCI U01-CA215709_ #h(1fr) 2017–2022 \
Cancer Systems Biology Consortium \
"Precision Lung Cancer Therapy Design through Multiplexed Adapter Measurement"

_Fellowship Grant_ #h(1fr) 2017–2019 \
Terri Brodeur Breast Cancer Foundation \
"Decoding the Role of TAM Receptors _In Vivo_ Using More Specific and Potent Inhibitors"

_AMIGOS Program Award_ #h(1fr) 2016–2020 \
Jayne Koskinas Ted Giovanis Foundation and Breast Cancer Research Foundation \
"Understanding the Role of Cell Plasticity in Mediating Drug Resistance"

_GPU Grant_ #h(1fr) 2016 \
NVIDIA Corporation \
"Parameterizing Stochastic Cell Signaling Pathways Through Variability Fitting"

_Frontier Research Program Initiator Award_ #h(1fr) 2015 \
Koch Institute for Integrative Cancer Research \
"Multiplexed Tools for Probing Chemokine Receptor Activation State in Breast Cancer"

_NIH Director's Early Independence Award, DP5-OD019815_ #h(1fr) 2014–2019 \
"Adapter-Layer RTK Signaling: Basic Understanding & Targeted Drug Resistance"

_Whitaker Fellowship_ #h(1fr) 2013 \
Massachusetts Institute of Technology

_Repligen Fellowship in Cancer Research_ #h(1fr) 2012 \
Koch Institute for Integrative Cancer Research

_Frontier Research Program Initiator Award_ #h(1fr) 2011 \
Koch Institute for Integrative Cancer Research \
"Global Growth Factor Reprogramming and Invasion By AXL Expression And Shedding In Breast Carcinoma"

_Breast Cancer Research Predoctoral Fellowship_ #h(1fr) 2010–2014 \
Department of Defense, W81XWH-11-1-0088 \
"Molecular Regulatory Network Dysregulation in Breast Cancer Cell Migration & Invasion"

_Graduate Research Fellowship_ #h(1fr) 2009–2014 \
National Science Foundation

_Momenta Presidential Fellowship_ #h(1fr) 2009 \
Massachusetts Institute of Technology


#section("Teaching Experience")

#job(
  position: "Instructor",
  institution: "Machine Learning & Data-Driven Modeling in Bioengineering",
  location: "UCLA, Department of Bioengineering",
  date: "2018–Present",
  description: [
    - Designed and lead project-based course tailored to the background of students in the program
  ])

#job(
  position: "Instructor",
  institution: "Bioengineering Laboratory",
  location: "UCLA, Department of Bioengineering",
  date: "2018–2024",
  description: [
    - Lab-based introduction to basics of experimental design and laboratory work in bioengineering 
  ])

#job(
  position: "Guest Speaker",
  institution: "Bioinformatics 202",
  location: "UCLA, Bioinformatics Interdepartmental Program",
  date: "2023",
  description: [
    - Discussed our lab's research and related topics in bioinformatics.
  ])

#job(
  position: "Guest Lecturer",
  institution: "Fundamentals of Digital Imaging and Image Processing",
  location: "UCLA, Molecular, Cell, and Developmental Biology",
  date: "2021, 2022",
  description: [
    - Led discussion of a paper from the lab used as a project within the class 
  ])

#job(
  position: "Discussion Leader",
  institution: "Ethics and Accountability in Biomedical Research",
  location: "UCLA, Microbiology, Immunology, & Molecular Genetics",
  date: "2021, 2024",
  description: [
    - Led discussion of various ethics case studies
  ])

#job(
  position: "Advisor & Instructor",
  institution: "Integrated and Interdisciplinary Undergraduate Research Program",
  location: "UCLA, Undergraduate Research Center",
  date: "2019–2023",
  description: [
    - Advised program participants on developing research, presentation, and professional skills
  ])

#job(
  position: "Team Mentor",
  institution: "Capstone Design",
  location: "UCLA, Department of Bioengineering",
  date: "2017, 2018, 2019, 2020",
  description: [
    - Poster competition winning team: 2018, 2019
  ])

#job(
  position: "Guest Speaker",
  institution: "Introduction to Bioengineering",
  location: "UCLA, Department of Bioengineering",
  date: "2017, 2019, 2020, 2023, 2024",
  description: [
    - Guest speaker to discuss research program and opportunities in bioengineering
  ])

#job(
  position: "Faculty of the Citizen Science Program",
  institution: "Citizen Science Program",
  location: "Bard College, Annandale-on-Hudson, NY",
  date: "2015–2016",
  description: [
    - Led a short course introducing students to the natural sciences and scientific method
  ])

#job(
  position: "Teaching Assistant",
  institution: "Thermodynamics of Biomolecular Systems",
  location: "MIT, Department of Biological Engineering",
  date: "2010"
  )


#section("Conference & Invited Presentations (Last Five Years)")

#let data = yaml("../_data/talks.yaml")
#let presentations = data.presentations.sorted(key: x => x.date).rev()

#let format_presentation(pres, parsed_date) = [
  #pres.venue, #pres.type #h(1fr) #parsed_date.display("[month repr:short] [year]") \
  "#pres.title"
]

#for pres in presentations [
  #let parsed_date = toml.decode("date = " + pres.date).date

  #format_presentation(pres, parsed_date)
  
  #v(0.5em)
]


#section("Research Supervision")

#let student_list(msteam) = {
  for post in msteam [
    - #post.name#if "postposition" in post [~(#post.postposition)]  #h(1fr) #post.joined#sym.dash.en#post.left
    #if "awards" in post [
      #set list(marker: [‣], indent: 10pt)
      #for award in post.awards [
        - #award
      ]
    ]
  ]
}

#let team = yaml("../_data/team.yml")
#let posts = team.filter(x => x.position.contains("Postdoctoral")).sorted(key: x => x.joined).rev()

#subsection("Postdoctoral Fellows")
#student_list(posts)

#subsection("Ph.D. Students")

- Meera Trisal #h(1fr) 2023--Present
- Michelle Loui #h(1fr) 2022--Present
  - SURF Fellowship, UCLA Graduate Division
- Andrew Ramirez #h(1fr) 2021--Present
  - NSF Graduate Research Fellowship
  - Cota Robles Fellowship
  - UCLA EDI Student Leadership Award
- Jackson Chin #h(1fr) 2020--2025
  - Best Poster Award, QC Bio Retreat, 2022
- Brian Orcutt-Jahns (Postdoctoral Associate, Genentech) #h(1fr) 2019--2024
  - Best Poster Award, CSBC Junior Investigator Meeting
  - Best Poster Award, Cytokine Society
  - Best Presentation Award, Los Angeles Bioscience Ecosystem Summit
  - Outstanding Ph.D.~Award, Department of Bioengineering
- Cyrillus Tan #h(1fr) 2019--2024
  - Dissertation Year Fellowship, UCLA Graduate Division
- Farnaz Mohammadi (Postdoctoral Associate, Genentech) #h(1fr) 2018--2023
  - Dissertation Year Fellowship, UCLA Graduate Division
- Marc Creixell (Scientist, Calico Life Sciences) #h(1fr) 2018--2023
  - JCCC Fellowship


#let msteam = team.filter(x => x.position.contains("M.S.")).sorted(key: x => x.joined).rev()

#subsection("M.S. Students")
#student_list(msteam)

#subsection("Undergraduate Students")

- Jamie Stickelmaier #h(1fr) 2021--2023
- Ethan Hung (Amgen Scholar, Berkeley) #h(1fr) 2021--2024
- Eva Hunter #h(1fr) 2021--2022
- Hakan Alpay (Frontend Engineer, Facebook) #h(1fr) 2021
- Luka Karginov (NCI CSBC Summer Scholar; Ph.D., Biological Engineering, MIT) #h(1fr) 2020--2021
- Aditya Sivakumar #h(1fr) 2020--2021
- Eli Snyder (M.D., University of Hawaii) #h(1fr) 2020--2021
- Peter Emmel #h(1fr) 2019--2022
- Amanda Tsao (M.D., University of Southern California) #h(1fr) 2019--2021
- JC Lagarde #h(1fr) 2019--2022
- Sumedha Kanthamneni (Google) #h(1fr) 2019--2022
- Heather Carmen Mercieca (Amgen Scholar) #h(1fr) 2019
- Linnet Chang (Analyst, Accenture) #h(1fr) 2018--2021
- Stephen Lees (Ph.D., Biomedical Engineering, UVA) #h(1fr) 2018--2021
- Zoe Kim (Engineer, GaN Corporation) #h(1fr) 2018--2020
- Micah Bryant (M.S., Mechanical Engineering, UCSD) #h(1fr) 2018--2020
- Robby Theisen (Ph.D., Biomedical Engineering, University of Michigan) #h(1fr) 2018--2020
- Alison Tran (Biosciences Account Manager, Thermo Fisher Scientific) #h(1fr) 2018--2020
- Willie Wu (Software Engineer, Rivian) #h(1fr) 2018--2019
- Katrina Warner (Amgen Scholar; Ph.D., Biomedical Sciences, Harvard) #h(1fr) 2018
- Donya Khashayar (Transfer Student Summer Research Program) #h(1fr) 2018
- Rui Yan (Ph.D., ICME, Stanford) #h(1fr) 2017--2019
  - Cathy Bank Scholarship
- Ali Farhat (M.D./Ph.D., U Illinois) #h(1fr) 2017--2019
  - Rose Hills Foundation Scholar
- Adam Weiner (Ph.D., Tri-Institute CompBio) #h(1fr) 2017--2019
  - Internet Research Initiative Award
- Ning Guan (Ph.D., Systems Biology, Harvard) #h(1fr) 2015--2017
- Ryan Robinett (Ph.D., Comp. Sci., U. Chicago) #h(1fr) 2015--2017
  - National Science Foundation Graduate Research Fellowship


#section("Service")

#let data = yaml("../_data/service.yaml")

#subsection("Profession")

#let deptservice = data.service.profession

#for item in deptservice [
  #award(
    award: item.at("role", default: ""),
    date: str(item.at("date", default: "")),
    institution: item.at("organization", default: "")
  )
]

#subsection("School & Campus")

#let deptservice = data.service.school

#for item in deptservice [
  #award(
    award: item.at("role", default: ""),
    date: str(item.at("date", default: "")),
    institution: item.at("organization", default: "")
  )
]


#subsection("Department")

#let deptservice = data.service.department

#for item in deptservice [
  #award(
    award: item.at("role", default: ""),
    date: str(item.at("date", default: "")),
    institution: item.at("organization", default: "")
  )
]

#section("Patents & Disclosures")

A.S. Meyer. "Methods of Identifying and Correcting Tumor Humoral Immune Dysregulation." U.S. patent application PCT/US24/32940, 2024.

Orcutt-Jahns, B., P.C. Emmel, A.S. Meyer. "Multi-specific engineered cytokines." U.S. patent application PCT/US24/32940, 2023.

A.S. Meyer. "Altering cytokine specificity through binding valency." U.S. patent application PCT/US22/35711, 2022.

Miller, M.A., M.J. Oudin, A.S. Meyer, L.G. Griffith, F.B. Gertler, D.A. Lauffenburger. "Methods of Reducing Kinase Inhibitor Resistance." US patent application 14/690,001, 2015.

// 
// THESIS COMMITTEE MEMBERSHIP

#let data = yaml("../_data/thesis-committees.yaml")
#let committees = data.committees

#section("Thesis Committee Membership")

// Sort committees by start_date
#let sorted-committees = committees.sorted(key: committee => committee.start_date)

#let committee-grid(com-list) = grid(
  columns: (1fr, 1fr),
  gutter: 16pt,
  ..com-list.map(committee => [
    #box[
      *#committee.name*, #committee.program \
      Advisor: #committee.advisor \
      #committee.start_date–#committee.end_date
    ]
  ])
)

#committee-grid(sorted-committees)









