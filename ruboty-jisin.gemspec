# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/jisin/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-jisin"
  spec.version       = Ruboty::Jisin::VERSION
  spec.authors       = ["tfunato"]
  spec.email         = ["tfunato@gmail.com"]
  spec.summary       = %q{ruboty handler. show earthquake infomaition from twitter.}
  spec.description   = %q{ruboty handler. show earthquake infomaition from twitter.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "twitter", ">= 5.0.0"
  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
