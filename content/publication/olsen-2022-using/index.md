---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Using Shapley Values and Variational Autoencoders to Explain Predictive Models with Dependent Mixed Features"
subtitle: ""
summary: ""
authors:
- Lars Henry Berge Olsen
- Ingrid Kristine Glad
- Martin Jullum
- Kjersti Aas
tags: []
categories: []
date: 2022-11-23T09:23:19+01:00
lastmod: 2022-11-23T09:23:19+01:00
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
publishDate: '2022-04-16T21:17:17.508828Z'
publication_types:
- '2'
abstract: Shapley values are today extensively used as a model-agnostic explanation framework to explain complex predictive machine learning models. Shapley values have desirable theoretical properties and a sound mathematical foundation in the field of cooperative game theory. Precise Shapley value estimates for dependent data rely on accurate modeling of the dependencies between all feature combinations. In this paper, we use a variational autoencoder with arbitrary conditioning (VAEAC) to model all feature dependencies simultaneously. We demonstrate through comprehensive simulation studies that our VAEAC approach to Shapley value estimation outperforms the state-of-the-art methods for a wide range of settings for both continuous and mixed dependent features. For high-dimensional settings, our VAEAC approach with a non-uniform masking scheme significantly outperforms competing methods. Finally, we apply our VAEAC approach to estimate Shapley value explanations for the Abalone data set from the UCI Machine Learning Repository.
publication: '*Journal of Machine Learning Research*'
doi: http://jmlr.org/papers/v23/21-1413.html
---
