require 'find'
require 'fileutils'

Find.find('/tmp/source/dem_png/10') {|a_path|
  next unless /(\d*)\/(\d*)\/(\d*)\.png$/.match a_path
  (z, x, y) = [$1, $2, $3].map{|v| v.to_i}
  b_path = "/tmp/source/seamlessphoto/#{z}/#{x}/#{y}.jpg"
  next unless File.exist?(b_path)
  %w{test train val}.each{|t|
    print "convert #{a_path} #{b_path} +append #{t}/#{z}-#{x}-#{y}.png\n"
  }
}
