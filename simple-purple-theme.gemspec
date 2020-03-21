# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "simple-purple-theme"
  spec.version       = "0.3.1"
  spec.authors       = ["Calin Radoni"]
  spec.email         = ["CalinRadoni@users.noreply.github.com"]

  spec.summary       = "This theme was created for https://calinradoni.github.io/"
  spec.homepage      = "https://github.com/CalinRadoni/simple-purple-theme"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|pages|posts|sass)/|(LICENSE|README|index)((\.(txt|md|html)|$)))!i)
  end

  # version are taken from https://pages.github.com/versions/
  # and were valid for github-pages version 204
  spec.add_runtime_dependency "jekyll", "~> 3.8"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.4"

  spec.add_development_dependency "bundler", "~> 2.1"
end
