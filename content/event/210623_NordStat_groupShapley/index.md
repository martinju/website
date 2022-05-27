---
title: Efficient Shapley value explanation through covariate groups

event: The 28th Nordic Conference in Mathematical Statistics (NordStat 2021)
event_url: https://site.uit.no/nordstat2021/

location: Online/Tromsø, Norway
#address:
#  street: 450 Serra Mall
#  city: Stanford
#  region: CA
#  postcode: '94305'
#  country: United States

summary: Presenting a method for explaining predictive models with Shapley values for groups of covariates 

abstract: "Shapley values has established itself as one of the most appropriate and theoretically sound frameworks for explaining predictions from complex regression/machine learning models. The popularity of Shapley values in the explanation setting is probably due to its unique theoretical properties. The main drawback with Shapley values, however, is that its computational complexity grows exponentially in the number of input features (covariates), making it unfeasible in many real world situations where there could be hundreds or thousands of features. Furthermore, with many (dependent) features, presenting/visualizing and interpreting the computed Shapley values also becomes challenging. I hereby present groupShapley: a conceptually simple approach for dealing with the aforementioned bottlenecks. The idea is to group the features, for example by type or dependence, and then compute and present Shapley values for these groups instead of for all individual features. Reducing hundreds or thousands of features to half a dozen or so, makes precise computations practically feasible and the presentation and knowledge extraction greatly simplified. It may be shown that under certain conditions, groupShapley is equivalent to summing the feature-wise Shapley values within each feature group, but simulations indicate that they may differ significantly outside the conditions. The groupShapley method is implemented in a development version of the R-package shapr. I will introduce the method, and talk about it from both theoretical and practical sides. The practical simplifications will be showcased through a real world car insurance example."

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: "2021-06-23"
#date_end: "2030-06-01T15:00:00Z"
all_day: true

# Schedule page publish date (NOT talk date).
publishDate: "2022-02-03T00:00:00Z"

authors: [Martin Jullum]
tags: [Explainable AI, Shapley]

# Is this a featured talk? (true/false)
featured: false

#image:
#  caption: 'Image credit: [**Unsplash**](https://unsplash.com/photos/bzdhc5b3Bxs)'
#  focal_point: Right

#links:
#- icon: twitter
#  icon_pack: fab
#  name: Follow
#  url: https://twitter.com/georgecushen
url_code: ""
url_pdf: ""
url_slides: "slides/210623_NordStat_groupShapley.pdf"
url_video: ""

# Markdown Slides (optional).
#   Associate this talk with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
#slides: example

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects:
- Explainable AI
---
