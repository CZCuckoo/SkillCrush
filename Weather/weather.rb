# require 'rubygems'
# require 'nokogiri'
require 'yahoo_weatherman'

puts "What zip code are you looking for a forecast in?"
location = gets.chomp

def get_weather(location)
  client = Weatherman::Client.new
  weather = client.lookup_by_location(location)
end



# client = Weatherman::Client.new
# response = client.lookup_by_woeid 455821
#
#
#
# # 12759091
#
#
# client.lookup_by_location('66061').condition['temp']
# client.lookup_by_location('olathe, ks').condition['temp']
# client.lookup_by_location('north pole').condition['temp']
# client.lookup_by_location('sydney opera house').condition['temp']

#
# puts "What is the Zip Code of your location?"
# zip_code = gets.chomp
#
#
#
#
get_weather(location)
