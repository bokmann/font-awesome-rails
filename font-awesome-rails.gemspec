# -*- encoding: utf-8 -*-
require File.expand_path('../lib/font-awesome-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["bokmann"]
  gem.email         = ["dbock@codesherpas.com"]
  gem.description   = "I like font-awesome. I like the asset pipeline. I like semantic versioning. If you do too, you're welcome."
  gem.summary       = "an asset gemification of the font-awesome icon font library"
  gem.homepage      = "https://github.com/bokmann/font-awesome-rails"
  gem.licenses      = ["MIT", "SIL Open Font License"]

  gem.files         = `git ls-files -- {app,bin,lib,test,spec}/* {LICENSE*,Rakefile,README*}`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec}/*`.split("\n")
  gem.name          = "font-awesome-rails"
  gem.require_paths = ["lib"]
  gem.version       = FontAwesome::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2", "< 5.2"

  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "sass-rails"

  gem.required_ruby_version = '>= 1.9.3'
end
