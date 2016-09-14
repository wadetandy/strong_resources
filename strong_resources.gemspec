# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'strong_resources/version'

Gem::Specification.new do |spec|
  spec.name          = "strong_resources"
  spec.version       = StrongResources::VERSION
  spec.authors       = ["Lee Richmond"]
  spec.email         = ["lrichmond1@bloomberg.net"]

  spec.summary       = %q{Auto-generate swagger docs and strong params}
  spec.description   = %q{Think factory girl for strong parameters}
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://artprod.dev.bloomberg.com/artifactory/api/gems/bb-gems-local"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "stronger_parameters", "~> 2.6"
  spec.add_dependency "rails", [">= 4.1", "< 6.0"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-rails", "~> 3.0"
end
