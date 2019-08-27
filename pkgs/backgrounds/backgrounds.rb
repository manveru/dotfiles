#!/usr/bin/env ruby
# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'
require 'irb'

base = 'https://www.triplemonitorbackgrounds.com'
random = URI("#{base}/random/?userwidth=5760&userheight=1080")
random.open do |random_io|
  (Nokogiri::HTML(random_io.read) / '#random img').each do |img|
    href = img.parent[:href]
    filename = "twb/#{File.basename(href, '.php')}"
    next if File.exist?(filename)

    URI("#{base}#{img.parent[:href]}?userwidth=5760&userheight=1080").open do |imgpage_io|
      (Nokogiri::HTML(imgpage_io.read) / '#SingleImageContainer img').each do |img_tag|
        puts "downloading #{filename}"
        URI("#{base}#{img_tag[:src]}").open do |img_src|
          File.write(filename, img_src.read)
        end
      end
    end
  end
end
