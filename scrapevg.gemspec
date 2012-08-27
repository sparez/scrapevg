# -*- encoding: utf-8 -*-
require File.expand_path('../lib/scrapevg/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'scrapevg'
  s.version     = Scrapevg::VERSION
  s.date        = '2012-08-13'
  s.summary     = "Scrapevg - SVG scraper CLI utility"
  s.description = "A simple scraper of SVG content embedded in web pages"
  s.authors     = ["Reza Marvan Spagnolo"]
  s.email       = 'marvans@gmail.com'
  s.homepage    = 'http://rubygems.org/gems/scrapevg'

  s.files       = `git ls-files`.split($\)
  s.executables = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files  = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'aruba'
  s.add_development_dependency 'rake','~> 0.9.2'
  
  s.add_runtime_dependency 'methadone', '~>1.2.1'
  s.add_runtime_dependency 'nokogiri', ['>= 1.5.5', '< 2.0']
  s.add_runtime_dependency 'phantomjs.rb', ['>= 0.0.4', '< 1.0']
end