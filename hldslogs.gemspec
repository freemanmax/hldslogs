# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hldslogs/version'

Gem::Specification.new do |spec|
  spec.name          = "hldslogs"
  spec.version       = Hldslogs::VERSION
  spec.authors       = ["freemanmax"]
  spec.email         = ["nenadstojkovikj@gmail.com"]

  spec.summary       = %q{Hldslogs is a Counter-Strike 1.6 Server logs receiver.}
  spec.description   = %q{Hldslogs receive logs from Counter-Strike 1.6 Server.}
  spec.homepage      = "https://github.com/freemanmax/hldslogs"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
