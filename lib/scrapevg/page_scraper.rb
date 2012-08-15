# license...

require 'phantomjs.rb'

# scrape a web page using phantomjs
class Scrapevg::PageScraper

  def self.scrape_url(url)
    # get the load.js script absolute path
    script = File.expand_path(File.dirname(__FILE__) + '../../../resources/load.js')
    output = Phantomjs.run(script,url)

    raise ArgumentError, "Could not fetch the given url: #{url}" if output =~ /^FAIL/
  end

end