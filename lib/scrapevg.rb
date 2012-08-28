# Scrapevg main class
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

require 'methadone/cli_logger'

#
# Main Scrapevg driver
# Launch with Scrapevg.run()
#
module Scrapevg

  # Run Scrapevg main logic
  def self.run(page_url,target_dir)
    begin
      logger = Methadone::CLILogger.new
      page = PageScraper.scrape_url( page_url )
      svg_scraper = SvgScraper.new(page)
      if svg_scraper.svg_elements.size > 0
        logger.info "Found #{svg_scraper.svg_elements.size} SVG elements"
        logger.info "Writing the file(s) to the specified target directory: #{target_dir}"
        svg_scraper.write_to_directory(target_dir)
        logger.info 'Done!'
      else
        logger.warn "No SVG elements found in given page #{page_url}"
      end
    rescue ArgumentError => ae
      logger.error ae.message
    end
  end

end

require 'scrapevg/page_scraper'
require 'scrapevg/svg_scraper'
require 'scrapevg/version'
