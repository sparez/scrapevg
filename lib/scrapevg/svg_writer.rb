# license...

# write svg xml to file
class Scrapevg::SvgWriter

  # write to the target directory a file for each svg element passed
  # in the svg_array. optionally, define a file_prefix for the files
  # to be written.
  def self.write_to_files(  svg_array,
                            file_prefix = "svgimg_", 
                            target_dir )
    # number of zeros needed for formatting the suffix number
    zeros = Math.log10(svg_array.size).ceil
    svg_array.each_with_index do |svg,i|
      filename = file_prefix + "%0#{zeros}d" % i + ".svg"
      target_file = File.expand_path(target_dir) + '/' + filename
      self.write_to_file(svg,target_file)
    end
  end

  # write the given svg string to the given target file path
  def self.write_to_file(svg,target_file)
    File.open(target_file, 'w') do |f|
      f << '<?xml version="1.0" encoding="UTF-8" standalone="no"?>'
      f << "\n"
      f << svg.to_s
    end
  end

end