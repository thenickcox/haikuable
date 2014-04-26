# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'haikuable/version'

Gem::Specification.new do |spec|
  spec.name          = 'haikuable'
  spec.version       = Haikuable::VERSION
  spec.authors       = ['thenickcox']
  spec.email         = ['nick@nickcox.me']
  spec.description   = %q{Haiku}
  spec.summary       = %q{Test the haikuability of a string}
  spec.homepage      = 'github.com/thenickcox/haikuable'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'syllabize'
end
