# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "spree-refinerycms-authentication"
  gem.version       = "0.0.1"
  gem.authors       = ["Adrian Macneil"]
  gem.email         = ["adrian@crescendo.net.nz"]
  gem.description   = "Configure Spree to use RefineryCMS for authentication"
  gem.summary       = "Spree has a pluggable authentication system. This gem will tell Spree to use the built in RefineryCMS user model and authentication."
  gem.homepage      = "https://github.com/adrianmacneil/spree-refinerycms-authentication"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'spree', '~> 1.2'
  gem.add_runtime_dependency 'refinerycms', '~> 2.0'
end
