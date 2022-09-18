#!/bin/bash

set -e

cd ../..

if [[ ! -d simple-purple-theme ]]; then
    echo "call me from simple-purple-theme/script directory !"
    exit 1
fi

mkdir -p spt_test
cd spt_test

cp -r ../simple-purple-theme/_includes .
cp -r ../simple-purple-theme/_layouts .
cp -r ../simple-purple-theme/_sass .
cp -r ../simple-purple-theme/assets .
cp -r ../simple-purple-theme/docs/pages .
mkdir -p _posts
mkdir -p assets/img
cp ../simple-purple-theme/demo/logo.svg assets/img/
cp ../simple-purple-theme/demo/Gemfile .
cp ../simple-purple-theme/demo/_config.yml .
cp ../simple-purple-theme/demo/index.html .

sed -e 's/^remote_theme:/# &/' -i _config.yml

bundle config set --local path 'vendor/bundle'
bundle install

exit 0
