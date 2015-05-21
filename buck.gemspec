# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buck/version'

Gem::Specification.new do |spec|
  spec.name          = 'buck'
  spec.version       = Buck::VERSION
  spec.authors       = ['Brendan Spinks']
  spec.email         = ['brendan@thug.io']

  spec.summary       = 'orchestrate an elastic stack'
  spec.homepage      = 'https://github.com/nadnerb/buck'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f|
    f.match(%r{^(test|spec|features)/})
  }
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'hashie', '~> 3.2'

  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'simplecov', '~> 0.9'
  spec.add_development_dependency 'timecop', '~> 0.7'
  spec.add_development_dependency 'rubocop', '~> 0.30.0'
  spec.add_development_dependency 'cane', '~> 2.6.0'
  spec.add_development_dependency 'climate_control', '~> 0.0.3'
end
