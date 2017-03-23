require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
page = Nokogiri::HTML(open('https://news.google.com.br/'))

# puts "### Search title"
# page.css('h2.esc-lead-article-title').each do |title|
#   puts title.content
# end

# puts "### Search Content"
# page.css('.esc-lead-snippet-wrapper').each do |body|
#   puts body.content
# end

puts "### Search Origin"
page.css('.al-attribution-source').each do |origin|
  puts origin.content
end

puts "### Search Time"
page.css('.al-attribution-timestamp').each do |time|
  puts time.content
end

