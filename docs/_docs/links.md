---
date: 2020-05-03
---

# Links

In `Markdown` and `HTML` pages declare the links as follow:

- for internal links in variables use `relative_url` filter like `{% raw %}"{{ post.url | relative_url }}"{% endraw %}`;
- for internal explicit links use `site.baseurl` tag like `{% raw %}"{{ site.baseurl }}{% link _docs/quick-start.md %}"{% endraw %}`;
- use external links without modifications.

Markdown example:
{% raw %}
```md
[Settings]({{ site.baseurl }}{% link _docs/settings.md %})
```
{% endraw %}

HTML example:
{% raw %}
```html
<a href="{{ page.url | relative_url }}">A page</a>
<img src="{{ site.logo | relative_url }}">
```
{% endraw %}
