---
# Documentation: https://wowchemy.com/docs/managing-content/

title: Detecting money laundering transactions with machine learning
subtitle: ''
summary: ''
authors:
- Martin Jullum
- Anders Løland
- Ragnar Bang Huseby
- Geir Ånonsen
- Johannes Lorentzen
tags: []
categories: []
date: '2020-01-01'
lastmod: 2022-04-16T23:17:18+02:00
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
publishDate: '2022-04-16T21:17:17.922303Z'
publication_types:
- '2'
abstract: ' Purpose The purpose of this paper is to develop, describe and validate
  a machine learning model for prioritising which financial transactions should be
  manually investigated for potential money laundering. The model is applied to a
  large data set from Norway’s largest bank, DNB.  Design/methodology/approach A supervised
  machine learning model is trained by using three types of historic data: “normal”
  legal transactions; those flagged as suspicious by the bank’s internal alert system;
  and potential money laundering cases reported to the authorities. The model is trained
  to predict the probability that a new transaction should be reported, using information
  such as background information about the sender/receiver, their earlier behaviour
  and their transaction history.  Findings The paper demonstrates that the common
  approach of not using non-reported alerts (i.e. transactions that are investigated
  but not reported) in the training of the model can lead to sub-optimal results.
  The same applies to the use of normal (un-investigated) transactions. Our developed
  method outperforms the bank’s current approach in terms of a fair measure of performance.  Originality/value
  This research study is one of very few published anti-money laundering (AML) models
  for suspicious transactions that have been applied to a realistically sized data
  set. The paper also presents a new performance measure specifically tailored to
  compare the proposed method to the bank’s existing AML system.'
publication: '*Journal of Money Laundering Control*'
doi: https://doi.org/10.1108/JMLC-07-2019-0055
---
