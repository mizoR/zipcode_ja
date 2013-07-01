#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

#
# Usage
#   $ ./scripts/update.rb <x-ken-all path>
#
# Example
#   $ ./scripts/update.rb ./tmp/x-ken-all.csv
#

require 'csv'
require 'fileutils'

here = File.dirname(__FILE__)
src_dir = File.join(here, "../data/zipcode")
bak_dir = File.join(here, "../tmp/#{Time.now.to_i}")

if File.directory? src_dir
  FileUtils.mkdir_p bak_dir
  FileUtils.move src_dir, bak_dir
end

FileUtils.mkdir_p src_dir

open(ARGV[0], 'rb:Shift_JIS:UTF-8', undef: :replace) do |input|
  CSV.new(input).each do |row|
    ccc = row[2][0..2]
    zip_path = File.join(src_dir, "#{ccc}xxxx.csv")
    CSV.open(zip_path, 'a') do |output|
      output << row
    end
  end
end

