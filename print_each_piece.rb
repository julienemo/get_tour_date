require 'rubygems'
require "nokogiri"
require 'open-uri'
require "pry"

def print_date_place_per_show(show_url)
  page = Nokogiri::HTML(open(show_url))
  the_title = page.xpath("//*[@id='tc-front']/section/header/div/div/h1").text
  puts the_title

  sections = page.xpath('//*[@id="table_calendrier"]/tbody/tr')
  sections.each do |section|
    city = section.xpath('td[1]/div[1]').text.strip
    venue = section.xpath('td[2]/a').text.strip
    start_date = section.xpath('td[1]/div[2]/span[2]').text[5..-1]
    end_date = section.xpath('td[1]/div[2]/span[4]').text[5..-1]


    if city && venue && start_date && end_date
      place = " #{venue} (#{city})"
      start_date = "20" + start_date[-2..-1] + start_date[2..5] + start_date[0..1]
      end_date = end_date[3..5] + end_date[0..1]
      puts start_date + " - " + end_date + place
    end
  end
end

page_id = ARGV[0]
if page_id == nil
  puts "run print_each_piece.rb + page id"
  puts ""
  puts "for example, the page id for the following url"
  puts "---https://www.theatre-contemporain.net/spectacles/Outwitting-the-Devil/"
  puts "is"
  puts "Outwitting-the-Devil"
  exit
end

show_url = "https://www.theatre-contemporain.net/spectacles/#{page_id}/lesdates/"
print_date_place_per_show(show_url)
