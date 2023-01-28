---
date: 2020-03-25
date-modified: 2020-05-03
---

# Quick Start

This is a [Jekyll gem-based theme](https://jekyllrb.com/docs/themes/#understanding-gem-based-themes) built to be 100%
compatible with [GitHub Pages](https://pages.github.com/).
It was created for [calinradoni.github.io](https://calinradoni.github.io/).
I wanted a simple, Javascript free theme.

Here are three ways to use the theme:

* as a remote theme for GitHub Pages
* as a Ruby gem
* by copying the files

## As a remote theme for GitHub Pages

### Installation

For GitHub Pages, having a content like this for the `Gemfile`:

```ruby
source "https://rubygems.org"
gem 'github-pages', group: :jekyll_plugins
```

you only have to add this entry:

```yaml
remote_theme: "CalinRadoni/simple-purple-theme"
```

to the `_config.yml` file. Make sure that no other `theme:` or `remote-theme:`
entries are present in `_config.yml`.

**Note:** you can specify the version or commit to use by appending `@` and the
git reference, like this: `CalinRadoni/simple-purple-theme@1.0.0`. Without any
supplemental specification the last version from the `master` branch will be used.

### Usage

If you start in an empty directory you need:

1. `_config.yml`, `Gemfile` and `index.html` files. Copy the ones from theme's `demo` directory as a starting point;
2. the `pages` directory. Create it and add the files from theme's `docs/pages` in it;
3. the `_posts` directory. Create it and put your posts in it;
4. the `assets/img` directory to hold your images. Copy the `logo.svg` from the `demo` directory in it.

```tree
├── assets
│   └── img
│       └── logo.svg (from theme's demo directory)
├── _posts
│   └── (your posts)
├── pages
│   └── (demo files from theme's docs directory)
├── _config.yml (from theme's demo directory)
├── Gemfile (from theme's demo directory)
└── index.html (from theme's demo directory)
```

To test it run form the directory with `_config.yml`:

```sh
# first time only, you need to run these two commands to install required files
bundle config --local set path 'vendor/bundle'
bundle install

# start a web server for your site
bundle exec jekyll serve
```

then open your browser at [http://127.0.0.1:4000/demo/](http://127.0.0.1:4000/demo/).

## As a gem - NOT TESTED

*Warning: This section is work-in-progress !*

### Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "simple-purple-theme"
```

And add this line to your Jekyll site's `_config.yml` *(Make sure that no other*
`theme:` *or* `remote-theme:` *entries are present)*:

```yaml
theme: simple-purple-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-purple-theme

## By copying the files

### Installation

Fork or copy theme's files from [github.com/CalinRadoni/simple-purple-theme](https://github.com/CalinRadoni/simple-purple-theme).

### Usage

If you start in an empty directory you need:

1. the following theme directories: `_includes`, `_layouts`, `_sass` and `assets`;
2. the `pages` directory. Create it and add the files from theme's `docs/pages` in it;
3. the `_posts` directory. Create it and put your posts in it;
4. the `assets/img` directory to hold your images. Copy the `logo.svg` from the `demo` directory in it;
5. `_config.yml`, `Gemfile` and `index.html` files. Copy the ones from theme's `demo` directory as a starting point;
6. comment the `remote_theme:` entry from the `_config.yml` file.

```tree
├── assets
│   ├── css
│   │   └── (files from theme)
│   └── img
│       └── logo.svg (from theme's demo directory)
├── _includes
│   └── (files from theme)
├── _layouts
│   └── (files from theme)
├── _sass
│   └── (files from theme)
├── _posts
│   └── (your posts)
├── pages
│   └── (demo files from theme's docs directory)
├── _config.yml (from theme's demo directory)
├── Gemfile (from theme's demo directory)
└── index.html (from theme's demo directory)
```

To test it run form the directory with `_config.yml`:

```sh
# first time only, you need to run these two commands to install required files
bundle config --local set path 'vendor/bundle'
bundle install

# start a web server for your site
bundle exec jekyll serve
```
