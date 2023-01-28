# simple-purple-theme

[![Build Status](https://travis-ci.com/CalinRadoni/simple-purple-theme.svg?branch=master)](https://travis-ci.com/CalinRadoni/simple-purple-theme)

This is a [Jekyll gem-based theme](https://jekyllrb.com/docs/themes/#understanding-gem-based-themes) built to be 100%
compatible with [GitHub Pages](https://pages.github.com/).

It was created for [calinradoni.github.io](https://calinradoni.github.io/).
It have its own demo pages and documentation at [simple-purple-theme](https://calinradoni.github.io/simple-purple-theme).

I wanted a simple, Javascript free theme.

## Installation and usage

Here are three ways to use the theme:

* as a remote theme for GitHub Pages
* as a Ruby gem
* by copying the files

### As a remote theme for GitHub Pages

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

To test it, run `bundle exec jekyll serve` and open your browser at
[http://127.0.0.1:4000/demo/](http://127.0.0.1:4000/demo/).

### As a gem - NOT TESTED

*Warning: This section is work-in-progress !*

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

### By copying the files

Fork or copy theme's files from [github.com/CalinRadoni/simple-purple-theme](https://github.com/CalinRadoni/simple-purple-theme).

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

To test it, run `bundle exec jekyll serve` and open your browser at
[http://localhost:4000/demo/](http://localhost:4000/demo/).

## Docs

For detailed documentation go to [simple-purple-theme quick-start](https://calinradoni.github.io/simple-purple-theme/docs/quick-start).

*Warning:* the documentation is *work-in-progress*.

## Test and theme development

Use the `create_test_theme.sh` script to create the `spt_test` directory with a copy of this theme and the `demo` site.

Modify the files as you wish and serve them locally with `bundle exec jekyll serve` to see the result.

## Development

To set up your environment to develop this theme, run:

```ruby
bundle config set path 'vendor/bundle'
bundle install
```

When the theme is released, only the files tracked with Git from:

* `_includes`
* `_layouts`
* `_sass`
* `assets`

directories and these files from root directory:

* `LICENSE.txt`
* `README.md`
* `index.html`

will be bundled in the Ruby gem. This list can be changed by editing the regexp in `simple-purple-theme.gemspec` accordingly.

## Contributing

As much as I want to adopt the [Contributor Covenant](http://contributor-covenant.org) code of conduct, I am afraid that my spare time may be a real stopper sometime.

You can [submit an issue](https://github.com/CalinRadoni/simple-purple-theme/issues/new) or make a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests).
For pull requests please follow [GitHub flow](https://guides.github.com/introduction/flow/).

Contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
