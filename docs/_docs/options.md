---
date: 2020-04-14
date-modified: 2020-04-20
---

## Site options

Notes from [Jekyll style guide](https://ben.balter.com/jekyll-style-guide/config/):

`baseurl`:

- If your site lives at example.com/blog, you should have a baseurl of /blog
- f your site lives at example.com, you should not set a baseurl. Not even /.

`url`: it is automatically set in development mode to http://localhost:4000 since Jekyll 3.3 and by GitHub Pages in production

## Skin options

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
