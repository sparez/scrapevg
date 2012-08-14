require 'nokogiri'
require 'open-uri'

# the main Scrapevg driver
class Scrapevg
  # run scrapevg with:
  #   Scrapevg.run

  def self.run
    url = ARGV[0]
    # todo: validate url ?
    # get a Nokogiri::HTML:Document out of the given url
    doc = Nokogiri::HTML( open(url) )
    # extract the svg elements -- using xpath ?
    # write the output svg files - we need a target dir for that
  end
end