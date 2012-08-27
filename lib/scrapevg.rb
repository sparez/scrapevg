# Scrapevg main class
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

#
# Main Scrapevg driver
# Launch with Scrapevg.run()
#
module Scrapevg

  # Run Scrapevg main logic
  def self.run(page_url,target_dir)
    page = PageScraper.scrape_url( page_url )
    svg_scraper = SvgScraper.new(page)
    if svg_scraper.svg_elements.size > 0
      puts "Found #{svg_scraper.svg_elements.size} SVG elements"
      puts "Writing the file(s) to the specified target directory: #{target_dir}"
      svg_scraper.write_to_directory(target_dir)
      puts 'Done!'
    else
      puts "No SVG elements found in given page #{page_url}"
    end
  end

end

require 'scrapevg/page_scraper'
require 'scrapevg/svg_scraper'
