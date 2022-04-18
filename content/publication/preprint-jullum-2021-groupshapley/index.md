---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'groupShapley: Efficient prediction explanation with Shapley values for feature
  groups'
subtitle: ''
summary: ''
authors:
- Martin Jullum
- Annabelle Redelmeier
- Kjersti Aas
tags: []
categories: []
date: '2021-01-01'
lastmod: 2022-04-18T21:33:17+02:00
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
publishDate: '2022-04-18T19:33:17.496384Z'
publication_types:
- '3'
abstract: 'Shapley values has established itself as one of the most appropriate and
  theoretically sound frameworks for explaining predictions from complex machine learning
  models. The popularity of Shapley values in the explanation setting is probably
  due to its unique theoretical properties. The main drawback with Shapley values,
  however, is that its computational complexity grows exponentially in the number
  of input features, making it unfeasible in many real world situations where there
  could be hundreds or thousands of features. Furthermore, with many (dependent) features,
  presenting/visualizing and interpreting the computed Shapley values also becomes
  challenging. The present paper introduces groupShapley: a conceptually simple approach
  for dealing with the aforementioned bottlenecks. The idea is to group the features,
  for example by type or dependence, and then compute and present Shapley values for
  these groups instead of for all individual features. Reducing hundreds or thousands
  of features to half a dozen or so, makes precise computations practically feasible
  and the presentation and knowledge extraction greatly simplified. We prove that
  under certain conditions, groupShapley is equivalent to summing the feature-wise
  Shapley values within each feature group. Moreover, we provide a simulation study
  exemplifying the differences when these conditions are not met. We illustrate the
  usability of the approach in a real world car insurance example, where groupShapley
  is used to provide simple and intuitive explanations.'
publication: '*arXiv preprint arXiv:2106.12228*'
doi: https://doi.org/10.48550/arXiv.2106.12228
---
