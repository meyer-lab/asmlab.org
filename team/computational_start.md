---
layout: page
title: Computational Project Resources
---

### Git / Github

All computational projects in the lab are stored and coordinated through the version tracking program git and the website Github. Dr. Meyer can invite you to become a member of the [organization account](https://github.com/meyer-lab) as soon as you have made a [Github account](https://github.com).

- [Resources to Learn Git](https://try.github.io/)
- [Version Control with Git](https://swcarpentry.github.io/git-novice/) 

Most projects in the lab roughly follow continuous integration principles. That is, individuals make desired changes to the project's code on their own branches, then regularly merge their changes with the whole group's version. We use GitHub actions to check our code for stylistic rules, correctness, and build the project's outputs (papers, programs, etc).

### Connect to Lab server via VS Code

The lab has a high-performance server that can be used for programming and running programs. Dr. Meyer is able to create accounts on this server for you. To connect remotely to this server, the most convenient interface is using [VS Code](https://code.visualstudio.com/) as IDE and install ["Remote - SSH"](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh)  extension there. 

- [Work remotely via VS code](https://code.visualstudio.com/docs/remote/ssh) 
- [Some common issues on SSH](https://code.visualstudio.com/docs/remote/troubleshooting)
- Some other useful extensions: [SVG Viewer](https://marketplace.visualstudio.com/items?itemName=cssho.vscode-svgviewer), [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)

### Python

The lab primarily uses Python for its computational analysis. This language is one of a few that offer the right breadth of capabilities for probabilistic and scientific programming. The syntax is likely familiar if you have a background in Matlab or C++. Software Carpentry offers two excellent tutorials for introducing yourself to the language:

- [Programming with Python](https://swcarpentry.github.io/python-novice-inflammation/)
- [Plotting and Programming in Python](https://swcarpentry.github.io/python-novice-gapminder/)

Some common Python packages we use:

- Basics: [numpy](https://www.numpy.org), [scipy](https://www.scipy.org), [pandas](https://pandas.pydata.org)
- Machine learning and data-driven methods:  [scikit-learn](https://scikit-learn.org), [TensorLy](https://tensorly.org)
- Plotting: [matplotlib](https://matplotlib.org), [seaborn](https://seaborn.pydata.org)

### Julia

We are increasingly using [Julia](https://docs.julialang.org/en/v1/) for new projects in the lab. The language provides a unique breadth of tools necessary for our work, Matlab-like syntax, and valuable benefits in language expressiveness.

Some common Julia packages we use: 

- Deterministic modeling: [Optim.jl](https://julianlsolvers.github.io/Optim.jl/), [DifferentialEquations.jl](https://docs.juliadiffeq.org/latest/), [ForwardDiff.jl](https://www.juliadiff.org/)
- Stochastic modeling: [Turing.jl](https://turing.ml)
- Machine learning and data-driven methods: [TensorDecompositions.jl](https://github.com/yunjhongwu/TensorDecompositions.jl)
- Plotting: [Plots.jl](https://docs.juliaplots.org/latest/), [Gadfly.jl](https://gadflyjl.org/)