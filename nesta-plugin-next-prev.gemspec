# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nesta-plugin-next-prev/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michael Klett"]
  gem.email         = ["michael@webadvocate.com"]
  gem.description   = %q{Provides next/prev page navigation for NestaCMS}
  gem.summary       = %q{Provides next/prev page navigation for NestaCMS}
  gem.homepage      = "https://github.com/moklett/nesta-plugin-next-prev"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nesta-plugin-next-prev"
  gem.require_paths = ["lib"]
  gem.version       = Nesta::Plugin::NextPrev::VERSION
  gem.add_dependency("nesta", ">= 0.9.11")
  gem.add_development_dependency("rake")
end
