# -*- encoding: utf-8 -*-
require File.expand_path('../lib/font-awesome-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["bokmann"]
  gem.email         = ["dbock@codesherpas.com"]
  gem.description   = %q{I like font-awesome.  I like the asset pipeline.  I like semantic versioning.  If you do too, you're welcome.}
  gem.summary       = %q{an asset gemification of the font-awesome icon font library}
  gem.homepage      = "https://github.com/bokmann/font-awesome-rails"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "font-awesome-rails"
  gem.require_paths = ["lib"]
  gem.version       = Font::Awesome::Rails::VERSION
  
  gem.add_dependency "railties", ">= 3.1"
  gem.add_development_dependency "rake"
end
