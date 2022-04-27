---
title: Efficient and simple prediction explanations with groupShapley -- A practical perspective

event: XAI.it workshop @ AIxAI 2021
event_url: http://www.di.uniba.it/~swap/xai-it/

location: Online
#address:
#  street: 450 Serra Mall
#  city: Stanford
#  region: CA
#  postcode: '94305'
#  country: United States

summary: Extending feature-wise Shapley value explanations to explanations through groups of features
abstract: Shapley values has established itself as one of the most appropriate and theoretically sound frameworks for explaining predictions from complex machine learning models. The popularity of Shapley values in the explanation setting is probably due to Shapley values’ unique theoretical properties. The main drawback with Shapley values, however, is that the computational complexity grows exponentially in the number of input features, making it unfeasible in many real world situations where there could be hundreds or thousands of features. Furthermore, with many (dependent) features, presenting/visualizing and interpreting the computed Shapley values also becomes challenging. The present paper introduces and showcases a method that we call groupShapley. The idea of the method is to group features and then compute and present Shapley values for these groups instead of for all individual features. Reducing hundreds or thousands of features to half a dozen or so feature groups makes precise computations practically feasible, and the presentation and knowledge extraction greatly simplified. We give practical advice for using the approach and illustrate its usability in three different real world examples. The examples vary in both data type (regular tabular data and time series), feature dimension (medium to high), and application (insurance, genetics, and banking).

# Talk start and end times.
#   End time can optionally be hidden by prefixing the line with `#`.
date: "2021-11-30"
#date_end: "2030-06-01T15:00:00Z"
all_day: true

# Schedule page publish date (NOT talk date).
publishDate: "2022-02-03T00:00:00Z"

authors: [Martin Jullum, Annabelle Redelmeier, Kjersti Aas]
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
url_slides: "slides/211129_XAI.it_groupShapley.pdf"
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
