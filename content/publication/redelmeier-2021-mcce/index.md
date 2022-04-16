---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'MCCE: Monte Carlo sampling of realistic counterfactual explanations'
subtitle: ''
summary: ''
authors:
- Annabelle Redelmeier
- Martin Jullum
- Kjersti Aas
- Anders Løland
tags: []
categories: []
date: '2021-01-01'
lastmod: 2022-04-16T23:17:21+02:00
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
publishDate: '2022-04-16T21:17:21.205448Z'
publication_types:
- '2'
abstract: 'In this paper we introduce MCCE: Monte Carlo sampling of realistic Counterfactual
  Explanations, a model-based method that generates counterfactual explanations by
  producing a set of feasible examples using conditional inference trees. Unlike algorithmic-based
  counterfactual methods that have to solve complex optimization problems or other
  model based methods that model the data distribution using heavy machine learning
  models, MCCE is made up of only two light-weight steps (generation and post-processing).
  MCCE is also straightforward for the end user to understand and implement, handles
  any type of predictive model and type of feature, takes into account actionability
  constraints when generating the counterfactual explanations, and generates as many
  counterfactual explanations as needed. In this paper we introduce MCCE and give
  a comprehensive list of performance metrics that can be used to compare counterfactual
  explanations. We also compare MCCE with a range of state-of-the-art methods and
  a new baseline method on benchmark data sets. MCCE outperforms all model-based methods
  and most algorithmic-based methods when also taking into account validity (i.e.,
  a correctly changed prediction) and actionability constraints. Finally, we show
  that MCCE has the strength of performing almost as well when given just a small
  subset of the training data.'
publication: '*arXiv preprint arXiv:2111.09790*'
doi: https://doi.org/10.48550/arXiv.2111.09790
---
