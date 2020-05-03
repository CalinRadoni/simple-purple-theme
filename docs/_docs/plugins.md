---
date: 2020-05-03
---

# Plugins

## Jekyll SEO plugin

Not used, I did not liked the information it generated that is why I have implemented all SEO manually.

## Jekyll paginate plugin

This plugin works **ONLY** on files named `index.html`.

The setting for this plugin are in the `_config.yml` file.

- `paginate` sets the number of post in a *paginated* page;
- `paginate_path` sets the name of *paginated* pages. The value `"/pages/page:num"` will make it use `pages/index.html` as a source.

## Jekyll sitemap plugin

To exclude pages or posts from this plugin add `sitemap: false` to their front matter.
