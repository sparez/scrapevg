# license...

# main Scrapevg driver
# run it with Scrapevg.run

class Scrapevg

  # run scrapevg main logic
  def self.run
    begin
      args = CliParser.parse_args(ARGV)
      page = PageScraper.scrape_url( args[:url] )
      svg_elements = SvgExtractor.extract_svg(page)
      if svg_elements.size > 0
        puts "Found #{svg_elements.size} SVG elements"
        puts "Writing the file(s) to the specified target directory: #{args[:target]}"
        prefix = 'svgfile_'
        svg_elements.each_with_index do |svg,i|
          filename = prefix + "%03d" % i + ".svg"
          target_file = File.expand_path(args[:target]) + '/' + filename
          SvgWriter.write_svg(svg,target_file)
        end
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
require 'scrapevg/svg_extractor'
require 'scrapevg/svg_writer'
