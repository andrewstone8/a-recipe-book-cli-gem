# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'recipe_book/version'

Gem::Specification.new do |spec|
  spec.name          = "recipe_book"
  spec.version       = RecipeBook::VERSION
  spec.authors       = ["andrewstone8"]
  spec.email         = ["andrewstone8@gmail.com"]
  spec.license       = "MIT"
  
  spec.summary       = "This is a classic mixed drink recipe book."
  spec.homepage      = "https://github.com/andrewstone8/a-recipe-book-cli-gem/"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = ['bin/recipe-book']
  spec.require_paths = ["lib", "lib/recipe_book"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
