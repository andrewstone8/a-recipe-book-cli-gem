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

  spec.files         = ["lib/recipe_book/recipe.rb", "lib/recipe_book/cli.rb", "lib/recipe_book.rb"]
  spec.executables   = ['recipe-book']

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "nokogiri", ">= 0"
end
