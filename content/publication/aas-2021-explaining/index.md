---
# Documentation: https://wowchemy.com/docs/managing-content/

title: 'Explaining individual predictions when features are dependent: More accurate
  approximations to Shapley values'
subtitle: ''
summary: ''
authors:
- Kjersti Aas
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
publishDate: '2022-04-16T21:17:18.719871Z'
publication_types:
- '2'
abstract: Explaining complex or seemingly simple machine learning models is an important
  practical problem. We want to explain individual predictions from such models by
  learning simple, interpretable explanations. Shapley value is a game theoretic concept
  that can be used for this purpose. The Shapley value framework has a series of desirable
  theoretical properties, and can in principle handle any predictive model. Kernel
  SHAP is a computationally efficient approximation to Shapley values in higher dimensions.
  Like several other existing methods, this approach assumes that the features are
  independent. Since Shapley values currently suffer from inclusion of unrealistic
  data instances when features are correlated, the explanations may be very misleading.
  This is the case even if a simple linear model is used for prediction. In this paper,
  we extend the Kernel SHAP method to handle dependent features. We provide several
  examples of linear and non-linear models with various degrees of feature dependence,
  where our method gives more accurate approximations to the true Shapley values.
publication: '*Artificial Intelligence*'
doi: https://doi.org/10.1016/j.artint.2021.103502
---
