# license...

# write svg xml to file
class SvgWriter

  # write the given svg to the given target file path
  def self.write_svg(svg,target)
    File.open(target, 'w') do |f|
      f << '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'
      f << "\n"
      f << svg.to_s
    end
  end

end