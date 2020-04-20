---
title: Search Engine Optimization
date: 2020-04-20
# date-modified: 2020-
---

## SEO Description

It is used in:

* `og-article.html`, property `og:description`
* `seo-ldjson-article.html`, json field `description`

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
    {%- assign xDesc = page.content | markdownify | strip_html | truncatewords: max-len -%}
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
