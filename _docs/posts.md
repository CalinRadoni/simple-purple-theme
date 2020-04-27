---
date: 2020-04-11
date-modified: 2020-04-20
---

## Preview

The preview of the posts is generated like this, in priority order:

1. if `post.description` is declared it is used
2. if the post contains the string "&lt;!--more-->", that is used as post excerpt terminator
3. the first `site.post-excerpt-maxlen` words are taken from the post

## Front matter

### title, headline and description

Use `title` for search engines, use `headline` for humans.
If the option `use-headline` is `false` the `headline` variable is ignored globally.

* `title` is **required**
* `headline` is **optional**
* `description` is **optional**

`title` usage:

* page title in HTML
* in the page header
* in `seo-ldjson-article` as the `headline` field
* in `og-article` as the `og:title` property

`headline` usage:

* in the page header
* in `seo-ldjson-article` as the first part of `description`, followed by `page.description` if there is one
* in `og-article` as the first part of `og:description`, followed by `page.description` if there is one

`description` usage:

* in page header
* in `tags` and `categories` pages
* in `Posts` page

### image

The image is used in SEO. Options (with notes from [A Guide to Sharing for Webmasters](https://developers.facebook.com/docs/sharing/webmasters) and [The Open Graph protocol - Structured Properties](https://ogp.me/#structured)) are:

* `image` is the URL of the image associated with this post. The image type can
  be one of `image/jpeg`, `image/gif` or `image/png`;
* `image-d` is a description of what is in the image (not a caption). If the
  page specifies an `og:image` it should specify `og:image:alt`;
* `image-w` and `image-h` are the width and height of image in pixels. Specify
  width and height for your image to ensure that the image loads properly the
  first time it's shared.

See also the [SEO]({% link _docs/seo.md %}) document.

## Header

`site.post-desc-in-header`

## Post informations

To find the `next` and `previous` posts in the same category **only the first category of current post** is considered !
