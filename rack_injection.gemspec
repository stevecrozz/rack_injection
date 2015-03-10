# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack_injection'

Gem::Specification.new do |spec|
  spec.name          = "rack_injection"
  spec.version       = RackInjection::VERSION
  spec.authors       = ["Stephen Crosby"]
  spec.email         = ["stevecrozz@gmail.com"]
  spec.summary       = %q{Inject arbitrary key-value pairs into your rack env}
  spec.description   = %q{This very simple gem just provides a middleware named
                          RackInjection that allows you to inject arbitrary
                          ke-value pairs into the Rack env on every request.}
  spec.homepage      = "https://github.com/stevecrozz/rack_injection"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
