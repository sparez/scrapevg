# Scrapevg CLI parser
# Author:: Reza Marvan Spagnolo
# License:: see LICENSE

#
# Parser for command line arguments
#
class Scrapevg::CliParser

  # Parse the passed ARGV and return a hash of relevant arguments.
  # Supported options in the hash:
  #     :url    => url of the web page to scrape
  #     :target => target directory where to write the svg files
  def self.parse_args(argv)
    raise ArgumentError, 'Please input URL to scrape as first argument' unless argv[0]
    raise ArgumentError, 'Please input target directory as second argument' unless argv[1]

    args = {
      :url    => argv[0],
      :target => argv[1],
    }
  end

end
