#!/usr/bin/ruby

# require
require "./lib/base"

# set output path
output_path = File.join(@base_dir, @base_file_name + "_combined" + @base_file_ext)

# export
image = Magick::ImageList.new(*@files.reverse)
image = image.append(false)
image.write(output_path)
