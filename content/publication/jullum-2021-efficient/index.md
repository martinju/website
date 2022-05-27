---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Efficient and simple prediction explanations with groupShapley: A practical
  perspective'
subtitle: ''
summary: ''
authors:
- Martin Jullum
- Annabelle Redelmeier
- Kjersti Aas
tags: []
categories: []
date: '2021-01-01'
lastmod: 2022-04-16T23:17:20+02:00
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
publishDate: '2022-04-16T21:17:20.365683Z'
publication_types:
- '1'
abstract: Shapley values has established itself as one of the most appropriate and
  theoretically sound frameworks for explaining predictions from complex machine learning
  models. The popularity of Shapley values in the explanation setting is probably
  due to Shapley values’ unique theoretical properties. The main drawback with Shapley
  values, however, is that the computational complexity grows exponentially in the
  number of input features, making it unfeasible in many real world situations where
  there could be hundreds or thousands of features. Furthermore, with many (dependent)
  features, presenting/visualizing and interpreting the computed Shapley values also
  become challenging. The present paper introduces and showcases a method that we
  call groupShapley. The idea of the method is to group features and then compute
  and present Shapley values for these groups instead of for all individual features.
  Reducing hundreds or thousands of features to half a dozen or so feature groups
  makes precise computations practically feasible, and the presentation and knowledge
  extraction greatly simplified. We give practical advice for using the approach and
  illustrate its usability in three different real world examples. The examples vary
  in both data type (regular tabular data and time series), feature dimension (medium
  to high), and application (insurance, genetics, and banking.
publication: '*Italian Workshop on Explainable Artificial Intelligence 2021*'
doi: http://ceur-ws.org/Vol-3014/paper3.pdf
---
