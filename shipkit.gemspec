# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shipkit/version'

Gem::Specification.new do |spec|
  spec.name          = "shipkit"
  spec.version       = Shipkit::VERSION
  spec.authors       = ["Jeff Browning"]
  spec.email         = ["jeff@jkbrowning.com"]
  spec.summary       = %q{Simple shipment tracking}
  spec.homepage      = "https://github.com/shiplovely/shipkit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", ">= 10.3.0"
  spec.add_development_dependency "rspec", "~> 3.0.0"
end
