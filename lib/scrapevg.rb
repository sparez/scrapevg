# Scrapevg main class
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

#
# Main Scrapevg driver
# Launch with Scrapevg.run()
#
module Scrapevg

  # Run Scrapevg main logic
  def self.run
    begin
      args = CliParser.parse_args(ARGV)
      page = PageScraper.scrape_url( args[:url] )
      svg_scraper = SvgScraper.new(page)
      if svg_scraper.svg_elements.size > 0
        puts "Found #{svg_scraper.svg_elements.size} SVG elements"
        puts "Writing the file(s) to the specified target directory: #{args[:target]}"
        svg_scraper.write_to_directory(args[:target])
        puts 'Done!'
      else
        puts "No SVG elements found in given page #{args[:url]}"
      end
    rescue ArgumentError => ae
      puts ae.message
    end
  end

end

require 'scrapevg/cli_parser'
require 'scrapevg/page_scraper'
require 'scrapevg/svg_scraper'
