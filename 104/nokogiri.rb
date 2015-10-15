require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))


# search = doc.css(".components-item")
list = doc.css('.components-item')

list.each do |x|
  puts x.inner_html
end
