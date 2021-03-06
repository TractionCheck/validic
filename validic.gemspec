# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'validic/version'

Gem::Specification.new do |spec|
  spec.name          = "validic"
  spec.version       = Validic::VERSION
  spec.authors       = ["Julius Francisco & Jay Balanay"]
  spec.email         = ["julius@motivationscience.com", "jay@motivationscience.com"]
  spec.description   = %q{API Wrapper for Validic}
  spec.summary       = spec.description
  spec.homepage      = "https://www.validic.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '~> 0.8'
  spec.add_dependency 'faraday_middleware', '~> 0.9'
  spec.add_dependency 'hashie', '~> 2.0.3'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'multi_json'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-rcov"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "shoulda"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "api_matchers"
end
