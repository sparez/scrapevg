# license...

require 'nokogiri'

# extracts svg elements out of a web page
class Scrapevg::SvgExtractor
  
  # return an array of svg elements found in the given web page
  def self.extract_svg(page)
    doc = Nokogiri::HTML( page ) # Nokogiri::HTML:Document
    svg_elements = doc.xpath('//svg')
  end

end
