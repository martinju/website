---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Using Shapley Values and Variational Autoencoders to Explain Predictive Models
  with Dependent Mixed Features
subtitle: ''
summary: ''
authors:
- Lars Henry Berge Olsen
- Ingrid Kristine Glad
- Martin Jullum
- Kjersti Aas
tags: []
categories: []
date: '2021-01-01'
lastmod: 2022-04-18T21:33:18+02:00
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
publishDate: '2022-04-18T19:33:17.905867Z'
publication_types:
- '3'
abstract: Shapley values are today extensively used as a model-agnostic explanation
  framework to explain complex predictive machine learning models. Shapley values
  have desirable theoretical properties and a sound mathematical foundation. Precise
  Shapley value estimates for dependent data rely on accurate modeling of the dependencies
  between all feature combinations. In this paper, we use a variational autoencoder
  with arbitrary conditioning (VAEAC) to model all feature dependencies simultaneously.
  We demonstrate through comprehensive simulation studies that VAEAC outperforms the
  state-of-the-art methods for a wide range of settings for both continuous and mixed
  dependent features. Finally, we apply VAEAC to the Abalone data set from the UCI
  Machine Learning Repository.
publication: '*arXiv preprint arXiv:2111.13507*'
doi: https://doi.org/10.48550/arXiv.2111.13507
---
