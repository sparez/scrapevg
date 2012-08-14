# license...

require 'phantomjs.rb'

# scrape a web page using phantomjs
class Scrapevg::PageScraper

  def self.scrape_url(url)
    # get the load.js script absolute path
    script = File.expand_path(File.dirname(__FILE__) + '../../../resources/load.js')
    output = Phantomjs.run(script,url)
    # todo: add error handling here like
    # if output ~= /FAIL/
    #   raise exception or return nil
  end

end