---
date: 2020-04-11
date-modified: 2020-05-21
---

# Posts

**This page is work-in-progress.**

Settings in front matter:

- `layout: post`
- `title`
- `headline`
- `description`
- `image`
- `date` and `date-modified`
- `author`
- `categories`
- `tags`
- `excerpt_separator`

## Preview

The preview of the posts is generated like this, in priority order:

1. if `post.description` is declared it is used
2. if the post contains the string "&lt;!--more-->", that is used as post excerpt terminator
3. the first `site.post-excerpt-maxlen` words are taken from the post

## Front matter

### title, headline and description

Use `title` for search engines, use `headline` for humans.
If the option `use-headline` is `false` the `headline` variable is ignored globally.

- `title` is **required**
- `headline` is **optional**
- `description` is **optional**

`title` usage:

- page title in HTML
- in the page header
- in `seo-ldjson-article` as the `headline` field
- in `og-article` as the `og:title` property

`headline` usage:

- in the page header
- in `seo-ldjson-article` as the first part of `description`, followed by `page.description` if there is one
- in `og-article` as the first part of `og:description`, followed by `page.description` if there is one

`description` usage:

- in page header
- in `tags` and `categories` pages
- in `Posts` page

### image

The image is used in SEO. Options (with notes from [A Guide to Sharing for Webmasters](https://developers.facebook.com/docs/sharing/webmasters) and [The Open Graph protocol - Structured Properties](https://ogp.me/#structured)) are:

- for Open Graph the properties used, if defined, are: `image`, and `image-d`, `image-w` and `image-h`;
- for LD-JSON, `images` if defined, `image` otherwise.

- `image` is the URL of the image associated with this post. The image type can
  be one of `image/jpeg`, `image/gif` or `image/png`;
- `image-d` is a description of what is in the image (not a caption). If the
  page specifies an `og:image` it should specify `og:image:alt`;
- `image-w` and `image-h` are the width and height of image in pixels. Specify
  width and height for your image to ensure that the image loads properly the
  first time it's shared.

Use `images` property, see below for Google's recommendation, like this:

```yaml
images:
  - /assets/images/post-name-img-1x1.png
  - /assets/images/post-name-img-3x4.png
  - /assets/images/post-name-img-16x9.png
```

Google recommends for [Articles](https://developers.google.com/search/docs/data-types/article) an image with:

- type `.jpg`, `.png`, or `.gif`;
- minimum width of 1200px;
- for best results, multiple high-resolution images (minimum of 800,000 pixels
  when multiplying width and height) with the following aspect ratios: `16x9`, `4x3`, and `1x1`.

the minimum sizes are:

- 1200 x 1200 px;
- 1200 x 900 px;
- 1200 x 675 px.

According to [Facebook's Images in Link Shares](https://developers.facebook.com/docs/sharing/webmasters/images),
for image size the preferred sizes are:

- 1200 x 630 px;
- 600 x 315 px;
- at least, keep the 1.91:1 aspect ratio.

See also the [SEO]({{ site.baseurl }}{% link _docs/seo.md %}) document.

## Header

The header content is customized by theme's settings. See the [Settings]({{ site.baseurl }}{% link _docs/settings.md %}) page for more info.

## Post information

To find the `next` and `previous` posts in the same category **only the first category of current post** is considered !

See the [Settings]({{ site.baseurl }}{% link _docs/settings.md %}) page for more info.
