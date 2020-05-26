---
date-modified: 2020-05-03
---

# Overriding theme defaults

If you use the theme like a Ruby gem, to locate theme's files on your computer
use `bundle info --path simple-purple-theme` command.

Jekyll will look first to your site’s content before looking to the theme’s
defaults for any requested file in the following folders:

- `/assets`
- `/_layouts`
- `/_includes`
- `/_sass`

### Layouts and includes

To replace layouts or includes in your theme, make a copy in your `_layouts` or
`_includes` directory of the specific file you wish to modify and change it.

### Assets

To replace any file from theme's `assets`, make a copy in your `assets`
directory of the specific file you wish to modify and change it.

### Stylesheets

**Note**: To add or modify any stylesheet  you **must** copy the main sass file,
`_sass/styles.scss` into the `_sass`  directory in your site’s source.

To replace any stylesheet in your theme, make a copy in your `_sass` directory
of the specific file you wish to modify and change it.

To add your own styles copy the file `user.scss` in your `_sass` directory and
change it.

### more information

See [Jekyll's Overriding theme defaults](https://jekyllrb.com/docs/themes/) page
for more information.
