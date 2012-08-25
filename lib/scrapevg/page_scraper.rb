# Scrapevg web page scraper
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

require 'phantomjs.rb'

#
# PageScraper
# Scrape a web page using PhantomJS
#
class Scrapevg::PageScraper

  LOADJS_ERROR_PATTERN = /^ERROR/

  # Scrape the given url and return a string containing the document content
  def self.scrape_url(url)
    # load.js script absolute path
    load_page_script = File.expand_path(File.dirname(__FILE__) + '../../../resources/load.js')
    contents = Phantomjs.run(load_page_script,url)
    raise ArgumentError, "Could not fetch the given url: #{url}" if contents =~ LOADJS_ERROR_PATTERN
    contents
  end

end
