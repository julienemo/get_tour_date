require "nokogiri"
require 'open-uri'
require "pry"

show_url = "https://www.theatre-contemporain.net/spectacles/Pelleas-et-Melisande-26352/lesdates/"
page = Nokogiri::HTML(open("https://www.theatre-contemporain.net/spectacles/Pelleas-et-Melisande-26352/lesdates/"))
puts page
