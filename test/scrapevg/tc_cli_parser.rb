# license...

require 'test/unit'

class Scrapevg::CliParserTest < Test::Unit::TestCase
  def test_parse_args
    test_url = 'http://foo.bar'
    test_target = '/tmp/mysvgfiles'
    test_argv = [ test_url, test_target ]
    args = Scrapevg::CliParser.parse_args(test_argv)
    assert_equal args[:url], test_url
    assert_equal args[:target], test_target
  end
end