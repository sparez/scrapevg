require 'test/unit'
require 'scrapevg'

class ScrapevgTest < Test::Unit::TestCase
  def test_base
    assert_equal 1, 1
  end
end

require 'scrapevg/test_cli_parser'
require 'scrapevg/test_svg_extractor'