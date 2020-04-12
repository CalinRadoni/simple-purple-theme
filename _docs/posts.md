---
categories: [ "Documentation" ]
tags: [ "post", "excerpt" ]
date: 2020-04-12
---

## Preview

site.post-date-in-preview

The preview of the posts is generated like this, in priority order:

1. if `post.description` is declared it is used
2. if the post contains the string "&lt;!--more-->", that is used as post excerpt terminator
3. the first `site.post-excerpt-maxlen` words are taken from the post

## Front matter

## Header

`site.post-desc-in-header`

## Post informations

`site.post-prev-and-next`
