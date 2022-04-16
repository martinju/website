---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Explaining predictive models using Shapley values and non-parametric vine copulas
subtitle: ''
summary: ''
authors:
- Kjersti Aas
- Thomas Nagler
- Martin Jullum
- Anders Løland
tags: []
categories: []
date: '2021-01-01'
lastmod: 2022-04-16T23:17:19+02:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2022-04-16T21:17:19.094917Z'
publication_types:
- '2'
abstract: In this paper the goal is to explain predictions from complex machine learning
  models. One method that has become very popular during the last few years is Shapley
  values. The original development of Shapley values for prediction explanation relied
  on the assumption that the features being described were independent. If the features
  in reality are dependent this may lead to incorrect explanations. Hence, there have
  recently been attempts of appropriately modelling/estimating the dependence between
  the features. Although the previously proposed methods clearly outperform the traditional
  approach assuming independence, they have their weaknesses. In this paper we propose
  two new approaches for modelling the dependence between the features. Both approaches
  are based on vine copulas, which are flexible tools for modelling multivariate non-Gaussian
  distributions able to characterise a wide range of complex dependencies. The performance
  of the proposed methods is evaluated on simulated data sets and a real data set.
  The experiments demonstrate that the vine copula approaches give more accurate approximations
  to the true Shapley values than their competitors.
publication: '*Dependence Modeling*'
doi: https://doi.org/10.1515/demo-2021-0103
---
