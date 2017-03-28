require 'nokogiri'
require 'open-uri'

# Fetch and parse HTML document
page = Nokogiri::HTML(open('https://news.google.com.br/'))

#page.css('.esc-layout-article-cell').each do |story|
page.css('.esc-body').each do |story|

  title  = story.at_css('.titletext').text
  body = story.at_css('.esc-lead-snippet-wrapper').text
  time = story.at_css('.al-attribution-timestamp').text
  image = page.at_css('.esc-thumbnail-image')['src']

  puts "Start||| Titulo: #{title} Conteudo: #{body} Tempo: #{time} Imagem-url: #{image} |||End "

end



