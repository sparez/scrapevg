# license...

require 'nokogiri'
require 'open-uri'
require 'socket'

# the main Scrapevg driver
class Scrapevg
  # run scrapevg with:
  #   Scrapevg.run

  def self.run
    begin
      args = CliParser.parse_args(ARGV)
      doc = Nokogiri::HTML( open( args[:url] ) ) # Nokogiri::HTML:Document
      puts doc  
      # extract the svg elements -- using xpath ?
      # write the output svg files - we need a target dir for that
    rescue SocketError
      puts "Failed to fetch given URL: #{args[:url]}"
    rescue ArgumentError => ae
      puts ae.message
    end
  end
end

require 'scrapevg/cli_parser'
