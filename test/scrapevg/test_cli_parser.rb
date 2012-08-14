require 'test/unit'

class Scrapevg::CliParserTest < Test::Unit::TestCase
  def test_parse_args
    test_url = 'http://foo.bar'
    test_argv = [ test_url ]
    options = Scrapevg::CliParser.parse_args(test_argv)
    assert_equal options[:url], test_url
  end
end