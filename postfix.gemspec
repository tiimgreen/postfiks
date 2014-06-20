# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'postfix/version'

Gem::Specification.new do |spec|
  spec.name          = 'postfix'
  spec.version       = Postfix::VERSION
  spec.authors       = ['Rafal Chmiel']
  spec.email         = ['rafalmarekchmiel@gmail.com']
  spec.summary       = %q(An implementation of the reverse Polish notation.)
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/rafalchmiel/postfix'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'guard-rspec'

  spec.add_development_dependency 'simplecov'

  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'guard-rubocop'

  spec.add_development_dependency 'pry'
end
