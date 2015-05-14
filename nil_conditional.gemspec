# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'nil_conditional'
  spec.version       = '2.0.1'
  spec.authors       = ['Grzegorz Bizon']
  spec.email         = ['grzegorz.bizon@ntsn.pl']
  spec.summary       = 'Nil Conditional Operator in Ruby'
  spec.homepage      = 'http://github.com/grzesiek/nil_conditional'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.2.0'
  spec.add_development_dependency 'rubocop', '~> 0.30.0'
end
