---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Investigating mesh-based approximation methods for the normalization constant
  in the log Gaussian Cox process likelihood
subtitle: ''
summary: ''
authors:
- Martin Jullum
tags: []
categories: []
date: '2020-01-01'
lastmod: 2022-04-18T21:04:51+02:00
featured: false
draft: false
links:
- name: Supplement
  url: publication/jullum-2020-investigating/jullum-2020-investigating-supplement.pdf

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
publishDate: '2022-04-18T19:04:51.350198Z'
publication_types:
- '2'
abstract: The log Gaussian Cox process (LGCP) is a frequently applied method for modeling
  point pattern data. The normalization constant of the LGCP likelihood involves an
  integral over a latent field. That integral is computationally expensive, making
  it troublesome to perform inference with standard methods. The so-called stochastic
  partial differential equation–integrated nested Laplace approximation (SPDE-INLA)
  framework enables fast approximate inference for a range of hierarchical models,
  where a key component is to approximate the latent field by a triangulated mesh.
  Recent research has made it possible to fit LGCP models with this framework using
  an approximate integration method to compute the integral. We carefully describe
  several alternative variants of that approximate integration method and derive an
  analytical formula for the integral in question, which actually is exact under the
  triangular mesh assumption used by SPDE-INLA. We compare the different integration
  strategies through a comprehensive simulation study and find that the analytical
  formula is often more accurate, but not always. Among the approximate integration
  methods, we recommend a simple extension to a method implemented in an R-package
  for fitting LGCP models.
publication: '*Stat*'
doi: https://doi.org/10.1002/sta4.285
---
