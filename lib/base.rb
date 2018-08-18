# require
require "rmagick"

# set files
@files = ARGV

if @files.empty?
  raise "[error] Please specify image as argument."
end

@files.each do |file|
  raise "[error] file not exists (#{file})" unless File.exists?(file)
end

# set base file data
base_file_path  = @files.first
@base_dir       = File.dirname(base_file_path)
@base_file_ext  = File.extname(base_file_path)
@base_file_name = File.basename(base_file_path, @base_file_ext)

