# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipcode_ja/version'

Gem::Specification.new do |gem|
  gem.name          = "zipcode_ja"
  gem.version       = ZipcodeJa::VERSION
  gem.authors       = ["Ryutaro Mizokami"]
  gem.email         = ["suzunatsu@yahoo.com"]
  gem.description   = %q{ZipcodeJa allows you to convert Japanese zipcode into a region.}
  gem.summary       = %q{Convert a zipcode to region.}
  gem.homepage      = "https://github.com/mizoR/zipcode_ja"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "pry"
  gem.add_development_dependency "rspec"

end
