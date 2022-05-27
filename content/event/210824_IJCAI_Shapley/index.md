---
title: 'Explaining individual predictions
when features are dependent: More accurate approximations to Shapley values'

event: IJCAI 2021
event_url: https://ijcai-21.org/

location: Online
#address:
#  street: 450 Serra Mall
#  city: Stanford
#  region: CA
#  postcode: '94305'
#  country: United States

summary: Invited talk (+poster) presenting our JAI-paper, presenting different methods for accounting for dependence in Shapley value based prediction explanations with accompanying simulation studies.
abstract: "We want to explain individual predictions from machine models by learning simple, interpretable explanations. Shapley values is a game theoretic concept that can be used for this purpose. The Shapley value framework has a series of desirable theoretical properties, and can in principle handle any predictive model. Kernel SHAP is a computationally efficient approximation to Shapley values in higher dimensions. Like several other existing methods, this approach assumes that the features are independent. Since Shapley values currently suffer when features are correlated, the explanations may be very misleading. We extend the Kernel SHAP method to handle dependent features."

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: "2021-08-24T13:00:00Z"
#date_end: "2030-06-01T15:00:00Z"
all_day: true

# Schedule page publish date (NOT talk date).
publishDate: "2022-02-03T00:00:00Z"

authors: [Martin Jullum, joint with Kjersti Aas and Anders Løland]
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
url_poster: "posters/210824_IJCAI_Shapley_poster.pdf"
url_slides: "slides/210824_IJCAI_Shapley_15min.pdf"
url_video: "media/210824_IJCAI_Shapley_2min_video.mp4"

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
