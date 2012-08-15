Gem::Specification.new do |s|
  s.name        = 'scrapevg'
  s.version     = '0.0.1'
  s.date        = '2012-08-13'
  s.summary     = "Scrapevg - SVG scraper CLI utility"
  s.description = "A simple scraper of SVG content embedded in web pages"
  s.authors     = ["Reza Marvan Spagnolo"]
  s.email       = 'marvans@gmail.com'
  s.files       = [ "lib/scrapevg.rb", 
                    "lib/scrapevg/cli_parser.rb", 
                    "lib/scrapevg/page_scraper.rb", 
                    "lib/scrapevg/svg_scraper.rb"]
  s.homepage    = 'http://rubygems.org/gems/scrapevg'
  s.executables << 'scrapevg'
  s.add_runtime_dependency 'nokogiri', ['>= 1.5.5', '< 2.0']
  s.add_runtime_dependency 'phantomjs.rb', ['>= 0.0.4', '< 1.0']
end