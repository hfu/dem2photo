require 'find'
require 'fileutils'

Find.find('/Volumes/Extreme 900/dem_png/10') {|a_path|
  next unless /(\d*)\/(\d*)\/(\d*)\.png$/.match a_path
  (z, x, y) = [$1, $2, $3].map{|v| v.to_i}
  b_path = "/Volumes/Extreme 900/seamlessphoto/#{z}/#{x}/#{y}.jpg"
  next unless File.exist?(b_path)
  %w{test train val}.each{|t|
    FileUtils.cp(a_path, "dem_png/#{t}/#{z}-#{x}-#{y}.png")
    FileUtils.cp(b_path, "seamlessphoto/#{t}/#{z}-#{x}-#{y}.jpg")
  }
}
