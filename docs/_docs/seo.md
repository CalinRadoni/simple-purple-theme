---
title: Search Engine Optimization
date: 2020-04-20
date-modified: 2020-05-22
---

SEO stands for Search Engine Optimization. See a general description in [Wikipedia's article](https://en.wikipedia.org/wiki/Search_engine_optimization) or search for more details starting with Google's [Search Engine Optimization Starter Guide](https://support.google.com/webmasters/answer/7451184) about SEO.

# Search Engine Optimization

**This page is not completed.**

## Testing

Use these links:

- [Structured data testing tool](https://search.google.com/structured-data/testing-tool)
- [Rich Results Test](https://search.google.com/test/rich-results)
- [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/)

## SEO Person

All fields are required if not specified otherwise.

- `name`
- `url`
- *recommended* `jobTitle`
- *recommended* `alumniOf`
- *recommended* `gender`
- *recommended* `sameAs`
- `image` link to an image

Specificy `sameAs` like:

```txt
samesAs = "link1", "link2", .... "linkN"
```

## SEO SoftwareSourceCode

All fields are required if not specified otherwise.

- `name`
- `codeRepository` is a link
- `codeSampleType`: full (compile ready) solution, code snippet, inline code, scripts, template
- `programmingLanguage`
- `runtimePlatform`: runtime platform or script interpreter dependencies

## SEO Product

All fields are required if not specified otherwise.

- `name`
- `image` link to an image
- `description`
- *recommended* `mpn` of type text
- *recommended* `sku` of type text
- `brand` of type text
- `url`
- `offer-availability` (offers.availability) of type [ItemAvailability](https://schema.org/ItemAvailability)
- `offer-price` (offers.price)
- `offer-currency` (offers.priceCurrency) three-letter, ISO4217 format
- *recommended* `offer-url`
- *recommended* `offer-priceValidUntil`

Note: Google's [Product](https://developers.google.com/search/docs/data-types/product) requires `review` or `aggregateRating` or `offers`.

If `offer-*` are not declared those will be completed as:

- `offer-availability`: LimitedAvailability
- `offer-price`: 1000
- `offer-currency`: BTC
- `offer-url` will not be included
- `offer-priceValidUntil` will not be included

## SEO Post

### SEO Post Description

It is used in:

- `og-article.html`, property `og:description`
- `seo-ldjson-article.html`, json field `description`

and built using the following code:

{% highlight liquid %}
{% raw %}
{%- if page.description -%}
  {%- assign xDesc = page.description -%}
{%- else -%}
  {%- if post.content contains '<!--more-->' -%}
    {%- assign xDesc = page.content | split: '<!--more-->' | first | markdownify | strip_html -%}
  {%- else -%}
    {% assign max-len = site.post-excerpt-maxlen | default: 50 %}
    {%- assign xDesc = page.content | markdownify | strip_html | strip_newlines | truncatewords: max-len -%}
  {%- endif -%}
{%- endif -%}

{%- if site.use-headline -%}
  {%- if page.headline -%}
    {%- assign xDesc = page.headline | append: " " | append: xDesc -%}
  {%- endif -%}
{%- endif -%}

{%- assign xDesc = xDesc | truncate: 160 -%}
{% endraw %}
{% endhighlight %}

### SEO Post Images

An image is required according to [Google's docs for structured data](https://developers.google.com/search/docs/data-types/article) for:

- site logo;
- publisher logo;
- company logo;
- every article.

Logo requirements:

- minimum size, width * height, 600 x 60 px;
- .jpg, .png, or. gif format;
- the text in word-based logos should be at most 48px tall and centered vertically within the 60px image height;
- logos with a solid background should include 6px minimum padding around the graphic.

Image requirements:

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
