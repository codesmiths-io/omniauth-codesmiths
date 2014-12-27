# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/formation/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-formation"
  spec.version       = OmniAuth::Formation::VERSION
  spec.authors       = ["Jimmy Apodaca"]
  spec.email         = ["jimmy@formationtech.com"]
  spec.summary       = %q{Omniauth OAuth2 Strategy for Formation Tech SSO.}
  spec.description   = %q{Use to connect application to main Formation Tech
    authentication server.}
  spec.homepage      = "https://github.com/formationtech/omniauth-formation-oauth2"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
