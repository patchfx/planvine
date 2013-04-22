# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'planvine/version'

Gem::Specification.new do |spec|
  spec.name          = "planvine"
  spec.version       = Planvine::VERSION
  spec.authors       = ["Richard Patching"]
  spec.email         = ["richard@justaddpixels.com"]
  spec.description   = %q{Ruby lib that wraps the planvine API}
  spec.summary       = %q{Ruby lib that wraps the planvine API}
  spec.homepage      = "http://github.com/patchfx/planvine"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
