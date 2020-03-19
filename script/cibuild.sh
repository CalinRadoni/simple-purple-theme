#!/bin/sh

set -e

echo "Building the example site..."
bundle exec jekyll build

if test -e "./_site/index.html"; then
  echo "The example site is built."
  rm --recursive --force _site
else
  echo "Failed to build the example site !"
  exit 1
fi

gem build simple-purple-theme.gemspec
rm --force simple-purple-theme*.gem
