---
layout: page
title: Tensor Learning Publications
---

Traditional data analysis methods organize data into matrix form—a two-dimensional (2D) grid of numbers wherein each column is a measurement and each row is an observation (e.g., genes by subjects). However, this approach overlooks how measurements are often systematically collected in biology. For example, measurements to understand the molecular response of cells to therapy might be collected over concentrations of drug, time, different sources of cells, and molecular features. In these cases, the data can be organized into a multidimensional (e.g., 4D) form. Generalization of statistical tools into these multidimensional/tensor forms exist, but their use has only begun to catch on in studies of biology and medicine because there is a lack of (1) knowledge about their benefits, (2) practical and useful implementations, and (3) algorithms for specific challenges that arise with biological data. By applying these techniques, developing new algorithms, and providing accessible implementations, we are [making these tools available in biomedical research](https://tensorly.org/stable/index.html).

{% bibliography --query @*[keywords ~= tensor] %}
