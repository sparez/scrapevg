# license...

require 'test/unit'

# test class for Scrapevg::SvgScraper

class Scrapevg::SvgScraperTest < Test::Unit::TestCase

  def setup
    # test fixtures
    # not using heredoc syntax for the svg elements as it breaks 
    # string comparison with parser result
    @svg_element =
    '<svg xmlns="http://www.w3.org/2000/svg" version="1.1">' + 
    '<circle cx="100" cy="50" r="40" stroke="black" stroke-width="2" fill="red">' +
    '</circle></svg>'
    @wrong_svg_element =  
    '<svga xmlns="http://www.w3.org/2000/svg" version="1.1">' + 
    '<circle cx="100" cy="50" r="40" stroke="black" stroke-width="2" fill="red">' +
    '</circle></svga>'
    @html_with_svg = <<-EOS.gsub(/^ {6}/, '')
      <!DOCTYPE html>
      <html>
        <body>
        #{@svg_element}
        </body>
      </html>
    EOS
    @html_with_wrong_svg = <<-EOS.gsub(/^ {6}/, '')
      <!DOCTYPE html>
      <html>
        <body>
        #{@wrong_svg_element}
        </body>
      </html>  
    EOS
    @html_with_no_svg = <<-EOS.gsub(/^ {6}/, '')
      <!DOCTYPE html>
      <html>
        <body>
          <h1>no SVG in here!</h1>
        </body>
      </html>  
    EOS
  end

  # test extraction of svg out of different html pages
  def test_extract_svg
    scraper = Scrapevg::SvgScraper.new(@html_with_no_svg)
    assert_equal scraper.svg_elements.size(), 0
    scraper = Scrapevg::SvgScraper.new(@html_with_wrong_svg)
    assert_equal scraper.svg_elements.size(), 0
    scraper = Scrapevg::SvgScraper.new(@html_with_svg)
    assert_equal scraper.svg_elements.size(), 1
    assert_equal scraper.svg_elements[0].to_s, @svg_element
  end

end
