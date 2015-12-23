# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dkron/api/version'

Gem::Specification.new do |spec|
  spec.name          = "dkron-api"
  spec.version       = Dkron::API::VERSION
  spec.authors       = ["Victor Castell"]
  spec.email         = ["victor.castell@jobandtalent.com"]

  spec.summary       = %q{Dkron HTTP API Ruby client}
  spec.description   = %q{Official Dkron HTTP API Ruby client}
  spec.homepage      = "https://github.com/jobandtalent/dkron-rb"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "heroics", "~> 0.0.14"
end
