---
layout: page
title: Getting Started - Computational Projects
---

### Git / Github

All computational projects in the lab are stored and coordinated through the version tracking program git and the website Github. Dr. Meyer can invite you to become a member of the [organization account](https://github.com/meyer-lab) as soon as you have made a [Github account](https://github.com).

- [Resources to Learn Git](https://try.github.io/)
- [Version Control with Git](http://swcarpentry.github.io/git-novice/)

### Python

The lab primarily uses Python for its computational analysis. This language is one of a few that offer the right breadth of capabilities for probabilistic and scientific programming. The syntax is likely familiar if you have a background in Matlab or C++. Software Carpentry offers two excellent tutorials for introducing yourself to the language:

- [Programming with Python](http://swcarpentry.github.io/python-novice-inflammation/)
- [Plotting and Programming in Python](https://swcarpentry.github.io/python-novice-gapminder/)

On top of Python, we commonly use the [numpy](https://www.numpy.org), [scipy](https://www.scipy.org), [pandas](https://pandas.pydata.org), [scikit-learn](https://scikit-learn.org), [matplotlib](https://matplotlib.org), [seaborn](https://seaborn.pydata.org), [Theano](http://www.deeplearning.net/software/theano), [PyMC3](https://docs.pymc.io), and [TensorLy](http://tensorly.org) packages.

### Julia

We are increasingly using [Julia](https://docs.julialang.org/en/v1/) for new projects in the lab. The language provides a unique breadth of tools necessary for our work, Matlab-like syntax, and valuable benefits in language expressiveness.

On top of Julia, we commonly use [DifferentialEquations.jl](http://docs.juliadiffeq.org/latest/), [TensorDecompositions.jl](https://github.com/yunjhongwu/TensorDecompositions.jl), [Turing.jl](https://turing.ml), and [Plots.jl](http://docs.juliaplots.org/latest/).

### Jupyterlab

The lab has a high-performance server that can be used for programming and running programs. The most convenient interface for using this server is JupyterLab (`https://aretha.seas.ucla.edu:8000/hub/`). Dr. Meyer is able to create accounts on this server for you.

### Jenkins

Most projects in the lab roughly follow continuous integration principles. That is, individuals make desired changes to the project's code on their own branches, then regularly merge their changes with the whole group's version. We use an automated build server to check our code for stylistic rules, correctness, and build the project's outputs (papers, programs, etc). This server (`https://transduc.seas.ucla.edu`) uses Jenkins to automate these tasks. You should have access to the server once your Github account is linked to the lab's organization.
