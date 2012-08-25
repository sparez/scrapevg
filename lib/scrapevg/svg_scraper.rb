# Scrapevg SVG scraper
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

require 'nokogiri'

#
# Scrape and handle SVG elements found in a web page
#
class Scrapevg::SvgScraper

  attr_reader :svg_elements

  # Initialize an SvgScraper instance with a string containing an HTML page
  def initialize(html_page)
    @doc = Nokogiri::HTML( html_page ) # Nokogiri::HTML:Document
    @svg_elements = @doc.xpath('//svg')
  end

  # Write to the target directory a file for each of the svg elements
  # found in the scraped page. 
  # Optionally, a custom file prefix can be given.
  # After the prefix, files will be numbered and carry the extension ".svg".
  def write_to_directory( target_dir, file_prefix = "svgimg_" )
    # number of zeros needed for formatting the suffix number
    zeros = Math.log10(svg_elements.size).ceil
    @svg_elements.each_with_index do |svg,i|
      filename = file_prefix + "%0#{zeros}d" % i + ".svg"
      target_file = File.expand_path(target_dir) + '/' + filename
      write_svg_file(svg.to_s,target_file)
    end
  end

  # Write an svg xml string to a target file path
  private
  def write_svg_file(svg,target_file)
    File.open(target_file, 'w') do |f|
      f << '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'
      f << "\n"
      f << svg.to_s
    end
  end

end