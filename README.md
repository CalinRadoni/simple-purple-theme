# simple-purple-theme

[![Build Status](https://travis-ci.com/CalinRadoni/simple-purple-theme.svg?branch=master)](https://travis-ci.com/CalinRadoni/simple-purple-theme)

This theme was created for [calinradoni.github.io](https://calinradoni.github.io/)

This theme is setup just like a normal Jekyll site! To test it, run `bundle exec jekyll serve` and open your browser at [http://localhost:4000](http://localhost:4000). This starts a Jekyll server using this theme.

## Installation - NOT YET, this is work-in-progress

### As a gem

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "simple-purple-theme"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: simple-purple-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-purple-theme

### As a remote theme

Having a content like this for the `Gemfile`:

```ruby
source "https://rubygems.org"
gem 'github-pages', group: :jekyll_plugins
```

add this entry:

```yaml
remote_theme: "CalinRadoni/simple-purple-theme"
```

to the `_config.yml` file.

## Usage

Usage documentation, including the available layouts, includes, sass and assets is *work-in-progress*.

## Development

To set up your environment to develop this theme, run

```ruby
bundle config --local set path 'vendor/bundle'
bundle install
```

When the theme is released, only the files tracked with Git from:

* `_includes`
* `_layouts`
* `_pages`
* `_posts`
* `_sass`
* `assets`

directories and these files from root directory:

* `LICENSE.txt`
* `README.md`
* `index.html`

will be bundled. This list be changed by editing the regexp in `simple-purple-theme.gemspec` accordingly.

## Contributing

As much as I want to adopt the [Contributor Covenant](http://contributor-covenant.org) code of conduct, I am afraid that my spare time may be a real stopper sometime.

You can [submit an issue](https://github.com/CalinRadoni/simple-purple-theme/issues/new) or make a [pull request](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests).
For pull requests please follow [GitHub flow](https://guides.github.com/introduction/flow/).

Contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
