namespace :scraper do
  desc "Google News Scraper"
  task scrape: :environment do
    require 'nokogiri'
    require 'open-uri'

    # Fetch and parse HTML document
    page = Nokogiri::HTML(open('https://news.google.com.br/'))

    #page.css('.esc-layout-article-cell').each do |story|
    page.css('.esc-body').each do |story|

      title_url  = story.at_css('.esc-lead-article-title a')['href']
      title  = story.at_css('.titletext').text
      body = story.at_css('.esc-lead-snippet-wrapper').text
      time = story.at_css('.al-attribution-timestamp').text
      image_url = story.at_css('.esc-thumbnail-image')['src']

      #puts "Start|||Titulo_url: #{title_url} Titulo: #{title} Conteudo: #{body} Tempo: #{time} Imagem-url: #{image_url} |||End "

      Newsville.create(title_url: title_url, title: title, body: body, time: time, image_url: image_url)


    end
  end
end
