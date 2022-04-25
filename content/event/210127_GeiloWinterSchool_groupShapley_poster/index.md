---
title: 'groupShapley: Efficient Shapley value explanation through feature groups'

event: Geilo Winter School 2021
event_url: https://www.sintef.no/projectweb/geilowinterschool/2021/

location: Online
#address:
#  street: 450 Serra Mall
#  city: Stanford
#  region: CA
#  postcode: '94305'
#  country: United States

summary: 'Poster/5-min lightning presentations: Extending feature-wise Shapley value explanations to explanations through groups of features.'
abstract: Shapley values has established itself as one of the most appropriate and theoretically sound frameworks for explaining predictions from complex machine learning models. The main drawback with the Shapley value framework is that its computationally complexity grows exponentially in the number of input features, making it infeasible for use in real world situations with hundreds or even thousands of features. Furthermore, with many (dependent) features, presenting/visualizing and interpreting the computed Shapley values also becomes challenging.I hereby present groupSHAP, a conceptually simple approach for dealing with the aforementioned bottleneck for Shapley values. The idea is to group the features, perhaps of similar type, from the same data source or based on their dependence, to then compute and present Shapley values for these groups instead of for all the individual features. Reducing hundreds or thousands of features to say half a dozen or a dozen, will make precise computations practically feasible, and the presentation and knowledge extraction greatly simplified. In many situations it could be more informative to know that a certain set of features in total contribute to the prediction in certain way, rather than being confused with small positive and negative contributions from similar (types of) features. While this work focuses on the prediction explanation side, the general idea is valid also for other types of Shapley value based explanations, such as global model explanations. This is work in progress, but I will present some preliminary results and examples. The method is implemented in a development version of the R-package shapr.

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: "2021-01-27T13:00:00Z"
#date_end: "2030-06-01T15:00:00Z"
all_day: false

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
url_slides: "slides/210127_GeiloWinterSchool_groupShapley_poster.pdf"
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
