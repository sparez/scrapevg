# license...

class Scrapevg::SvgExtractor
  # extracts svg elements out of a nokogiri html doc

  # return an array of svg elements found in the passed document
  def self.extract_svg(doc)
    svg_elements = doc.xpath('//svg')
    # todo: could do some cleanup for nested elements in the svg
    # which are not standard compliant etc.
  end

end

