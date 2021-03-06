# coding: utf-8
lib = File.expand_path('../lib', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "shiolink"
  spec.version       = "0.0.2"
  spec.authors       = ["Narazaka"]
  spec.email         = ["info@narazaka.net"]

  spec.summary       = %q{SHIOLINK interface}
  spec.description   = %q{Ukagaka SHIOLINK inteface}
  spec.homepage      = "https://github.com/Narazaka/shiolink-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.1.4"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.9"
  spec.add_development_dependency "yard", "~> 0.9.25"
  spec.add_development_dependency "simplecov", "~> 0.18"
  spec.add_development_dependency "codecov", "~>0.1"
end
