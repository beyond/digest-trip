# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'digest-trip/version'

Gem::Specification.new do |gem|
  gem.name          = "digest-trip"
  gem.version       = Digest::Trip::VERSION
  gem.authors       = ["Beyond"]
  gem.email         = ["beyond@be.go"]
  gem.description   = %q{ password digest for 2channel aka trip }
  gem.summary       = %q{ password digest for 2channel aka trip }
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end
