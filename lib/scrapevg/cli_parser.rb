# license...

# scrapevg parser for command line arguments
class Scrapevg::CliParser

  def self.parse_args(argv)
    # parses the options on the command line and returns a hash of values
    raise ArgumentError, 'Please input URL to scrape as first argument' unless argv[0]

    options = {
      :url => argv[0],
    }
  end

end
