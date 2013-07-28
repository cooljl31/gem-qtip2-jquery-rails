# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qtip2-jquery-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "qtip2-jquery-rails"
  spec.version       = Qtip2Jquery::Rails::VERSION
  spec.authors       = ["Doc Walker"]
  spec.email         = ["doc.walker@jameshardie.com"]
  spec.description   = %q{Provides the `qTip2` jQuery plugin packaged for the Rails 3.1+ asset pipeline.}
  spec.summary       = %q{Provides the `qTip2` jQuery plugin packaged for the Rails 3.1+ asset pipeline.}
  spec.homepage      = "https://github.com/jhx/gem-qtip2-jquery-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_dependency "railties", "~> 3.1"
  spec.requirements << "jQuery"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
