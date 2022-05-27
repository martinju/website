---
# Documentation: https://wowchemy.com/docs/managing-content/

title: What price semiparametric Cox regression?
subtitle: ''
summary: ''
authors:
- Martin Jullum
- Nils Lid Hjort
tags: []
categories: []
date: '2019-01-01'
lastmod: 2022-04-16T23:17:16+02:00
featured: false
draft: false
links:
- name: Supplement
  url: publication/jullum-2019-price/jullum-2019-price-supplement.pdf

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
publishDate: '2022-04-16T21:17:16.231776Z'
publication_types:
- '2'
abstract: Cox’s proportional hazards regression model is the standard method for modelling
  censored life-time data with covariates. In its standard form, this method relies
  on a semiparametric proportional hazards structure, leaving the baseline unspecified.
  Naturally, specifying a parametric model also for the baseline hazard, leading to
  fully parametric Cox models, will be more efficient when the parametric model is
  correct, or close to correct. The aim of this paper is two-fold. (a) We compare
  parametric and semiparametric models in terms of their asymptotic relative efficiencies
  when estimating different quantities. We find that for some quantities the gain
  of restricting the model space is substantial, while it is negligible for others.
  (b) To deal with such selection in practice we develop certain focused and averaged
  focused information criteria (FIC and AFIC). These aim at selecting the most appropriate
  proportional hazards models for given purposes. Our methodology applies also to
  the simpler case without covariates, when comparing Kaplan–Meier and Nelson–Aalen
  estimators to parametric counterparts. Applications to real data are also provided,
  along with analyses of theoretical behavioural aspects of our methods.
publication: '*Lifetime data analysis*'
doi: https://doi.org/10.1007/s10985-018-9450-7
---
