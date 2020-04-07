---
categories: [ "Documentation" ]
tags: [ "quick start", "installation" ]
date: 2020-03-25
date-modified: 2020-04-07
---

# Quick Start

## Installing the theme

The theme was built to be used with GitHub Pages.
The installation as a remote theme for GitHub Pages is the recommended method.

### GitHub Pages - remote theme

Make sure that the site's `Gemfile` file is like this:

```ruby
source "https://rubygems.org"
gem 'github-pages', group: :jekyll_plugins
```

Add the theme as a remote theme to site's `_config.yml` file:

```yaml
remote_theme: "CalinRadoni/simple-purple-theme"
```

**Warning:** Only one theme can be selected in the site's `_config.yml` file !

### Gem-based method

**Warning:** this method is not yet available as I have not uploaded this theme. I have yet to [publish it](https://jekyllrb.com/docs/themes/#publishing-your-theme).

This is a [gem-based theme](https://jekyllrb.com/docs/themes/#understanding-gem-based-themes). To install it:

**1.** Add the theme gem to site's `Gemfile` file:

```ruby
gem "simple-purple-theme"
```

**2.** Add the theme to site's `_config.yml` file:

```yaml
theme: "simple-purple-theme"
```

**3.** Install the theme

```sh
bundle install
```

**Warning:** Only one theme can be selected in the site's `_config.yml` file !

To test the site locally execute `bundle exec jekyll serve`
To update the theme execute `bundle update`
