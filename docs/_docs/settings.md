---
date-modified: 2020-05-03
---

# Settings

**This page is work-in-progress.**

Theme settings are in the `_config.yml` file.

**Note:** any change you make to the `_config.yml` file will be taken into account
by `jekyll serve` or `bundle exec jekyll serve` ONLY when those commands are
started !

## Site settings

- `title` and `description` are used for SEO and should also be used in the main page;
- `logo` is used in the site's header menu;

- `baseurl` should be used if the site if served from a subpath (**this is the case of GitHub Pages for Projects**):
  - if the site if served from `example.com/zzz` use `baseurl: /zzz`;
  - if the site is served from `example.com` comment it `# baseurl:`.

- `url:` it is automatically set in development mode to http://localhost:4000 since Jekyll 3.3 and by GitHub Pages in production.

## Theme settings

Leaving aside the obvious ones:

- `post-excerpt-maxlen`: *number-of-words*, default value 50, used to limit the
  length of the automatically generated excerpt in Posts and SEO records. Note:
  *In SEO records there is one more limit of 160 characters for descriptions, automatically imposed*;
- `post-date-in-preview`: use `true` or `false`, if is true the date is shown
  after the post's title in Categories, Tags and Posts pages;
- `post-desc-in-posts`: use `true` or `false`, if is true the post excerpt is
  shown in Posts page;
- `post-desc-in-tc-pages`: use `true` or `false`, if is true the post excerpt is
  shown in Categories and Tags pages;
- `post-desc-in-header`: use `true` or `false`, if is true the post description,
  if any, is shown in post's header;
- `post-prev-and-next`: use `true` or `false`, if is true show links to previous
  and next posts in the first category of current post;
- `post-related-posts`: use `true` or `false`, if is true show maximum `post-related-cnt`
  links to related post, based on `post-related-tag-cnt` tags;
- `post-show-category`: use `true` or `false`, if is true show category / categories
  in page info;
- `use-headline`: use `true` or `false`, if is false then the `headline` page / post
  variable is not used, even if defined;

## Jekyll setting

I have defined the `docs` collection to have dedicated page setting for these docs.
For the `docs` type, I have set the `doc` layout in `defaults`.
Take these defines as examples.
