---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Explaining predictive models with mixed features using Shapley values and conditional
  inference trees
subtitle: ''
summary: ''
authors:
- Annabelle Redelmeier
- Martin Jullum
- Kjersti Aas
tags: []
categories: []
date: '2020-01-01'
lastmod: 2022-04-19T08:53:37+02:00
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
publishDate: '2022-04-19T06:55:46.829872Z'
publication_types:
- '1'
abstract: It is becoming increasingly important to explain complex, black-box machine
  learning models. Although there is an expanding literature on this topic, Shapley
  values stand out as a sound method to explain predictions from any type of machine
  learning model. The original development of Shapley values for prediction explanation
  relied on the assumption that the features being described were independent. This
  methodology was then extended to explain dependent features with an underlying continuous
  distribution. In this paper, we propose a method to explain mixed (i.e. continuous,
  discrete, ordinal, and categorical) dependent features by modeling the dependence
  structure of the features using conditional inference trees. We demonstrate our
  proposed method against the current industry standards in various simulation studies
  and find that our method often outperforms the other approaches. Finally, we apply
  our method to a real financial data set used in the 2018 FICO Explainable Machine
  Learning Challenge and show how our explanations compare to the FICO challenge Recognition
  Award winning team.
publication: '*International Cross-Domain Conference for Machine Learning and Knowledge
  Extraction*'
doi: https://doi.org/10.1007/978-3-030-57321-8_7
---
