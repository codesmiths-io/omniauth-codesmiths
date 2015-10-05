# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/codesmiths/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-codesmiths"
  spec.version       = OmniAuth::Codesmiths::VERSION
  spec.authors       = ["Jimmy Apodaca"]
  spec.email         = ["jimmy@codesmiths.io"]
  spec.summary       = %q{Omniauth OAuth2 Strategy for Codesmiths IO SSO.}
  spec.description   = %q{Use to connect application to main Codesmiths IO
    authentication server.}
  spec.homepage      = "https://github.com/codesmiths-io/omniauth-codesmiths"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
