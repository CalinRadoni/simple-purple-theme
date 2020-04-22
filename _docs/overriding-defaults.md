---
---

# Overriding theme defaults

To locate theme's files on your computer use `bundle info --path simple-purple-theme`

Jekyll will look first to your site’s content before looking to the theme’s
defaults for any requested file in the following folders:

- `/assets`
- `/_layouts`
- `/_includes`
- `/_sass`

To replace layouts or includes in your theme, make a copy in your `_layouts` or
`_includes` directory of the specific file you wish to modify.

To replace any file from theme's `assets`, make a copy in your `assets`
directory of the specific file you wish to modify.

To modify any stylesheet you must take the extra step of also copying the main
sass file, `_sass/base.scss` into the `_sass` directory in your site’s source.

See [Jekyll's Overriding theme defaults](https://jekyllrb.com/docs/themes/) page
for more informations.
