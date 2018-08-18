#!/usr/bin/ruby

# require
require "./lib/base"

# config
split_count = ENV["SPLIT"]&.to_i || 2

# export
image = Magick::ImageList.new(@files.first)
base_columns = image.columns
base_rows    = image.rows

columns_step = base_columns / split_count
split_count.times.each do |i|
  output_filename = @base_file_name + "_split_" + (i + 1).to_s
  output_path = File.join(@base_dir, output_filename + @base_file_ext)

  cropped_image = image.crop(columns_step * i, 0, columns_step, base_rows)
  cropped_image.write(output_path)
end
