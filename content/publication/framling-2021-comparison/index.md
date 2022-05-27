---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Comparison of Contextual Importance and Utility with LIME and Shapley Values
subtitle: ''
summary: ''
authors:
- Kary Främling
- Marcus Westberg
- Martin Jullum
- Manik Madhikermi
- Avleen Malhi
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
publishDate: '2022-04-16T21:17:19.509713Z'
publication_types:
- '1'
abstract: Different explainable AI (XAI) methods are based on different notions of
  ‘ground truth’. In order to trust explanations of AI systems, the ground truth has
  to provide fidelity towards the actual behaviour of the AI system. An explanation
  that has poor fidelity towards the AI system’s actual behaviour can not be trusted
  no matter how convincing the explanations appear to be for the users. The Contextual
  Importance and Utility (CIU) method differs from currently popular outcome explanation
  methods such as Local Interpretable Model-agnostic Explanations (LIME) and Shapley
  values in several ways. Notably, CIU does not build any intermediate interpretable
  model like LIME, and it does not make any assumption regarding linearity or additivity
  of the feature importance. CIU also introduces the value utility notion and a definition
  of feature importance that is different from LIME and Shapley values. We argue that
  LIME and Shapley values actually estimate ‘influence’ (rather than ‘importance’),
  which combines importance and utility. The paper compares the three methods in terms
  of validity of their ground truth assumption and fidelity towards the underlying
  model through a series of benchmark tasks. The results confirm that LIME results
  tend not to be coherent nor stable. CIU and Shapley values give rather similar results
  when limiting explanations to ‘influence’. However, by separating ‘importance’ and
  ‘utility’ elements, CIU can provide more expressive and flexible explanations than
  LIME and Shapley values.
publication: '*International Workshop on Explainable, Transparent Autonomous Agents
  and Multi-Agent Systems*'
doi: https://doi.org/10.1007/978-3-030-82017-6_3
---
