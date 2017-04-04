
require 'rubygems'

namespace :cpp do


  desc "Adds all cpp files in directory and builds it."
  task :quick_build do |t, args|

    cc = ENV['CC'] || "clang++"
    out = ENV['OUT'] || "quick"
    files = ENV['FILES'] || "./"
    flags = ENV['FLAGS'] || "-Wall -Wpedantic"
    ex_flags = ENV['EX_FLAGS'] || "-fno-rtti"

    cmd = "#{cc} #{files} #{flags} #{ex_flags} -o #{out}"
    
    sh cmd 


  end


end
