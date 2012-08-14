# license...

class SvgWriter

  def self.write_svg(svg,target)
    File.open(target, 'w') do |f|
      f << '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'
      f << svg.to_s
    end
  end

end