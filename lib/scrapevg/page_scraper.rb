# license...

require 'phantomjs.rb'

# scrape a web page using phantomjs
class Scrapevg::PageScraper

  # scrape the given url and return a string containing the document contents
  def self.scrape_url(url)
    # load.js script absolute path
    load_page_script = File.expand_path(File.dirname(__FILE__) + '../../../resources/load.js')
    contents = Phantomjs.run(load_page_script,url)
    raise ArgumentError, "Could not fetch the given url: #{url}" if contents =~ /^FAIL/
    contents
  end

end
