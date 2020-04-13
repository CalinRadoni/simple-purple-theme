---
date: 2020-04-11
date-modified: 2020-04-13
---

## Preview

The preview of the posts is generated like this, in priority order:

1. if `post.description` is declared it is used
2. if the post contains the string "&lt;!--more-->", that is used as post excerpt terminator
3. the first `site.post-excerpt-maxlen` words are taken from the post

## Front matter

### title, headline and description

Use `title` for search engines.
Use `headline` for humans.

* `title` is **required**
* `headline` is **required**
* `description` is **optional**

`title` usage:

* page title in HTML
* in the page header
* in `seo-ldjson-article` as `headline`
* in `og-article` as `og:title`

`headline` usage:

* in the page header
* in `seo-ldjson-article` as the first part of `description`, followed by `page.description` if there is one
* in `og-article` as the first part of `og:description`, followed by `page.description` if there is one

`description` usage:

* in page header
* in `tags` and `categories` pages
* in `Posts` page

## Header

`site.post-desc-in-header`

## Post informations

`site.post-prev-and-next`
