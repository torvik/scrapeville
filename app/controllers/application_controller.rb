class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # def google_news
  #   #require 'nokogiri'
  #   require 'open-uri'

  #   page = Nokogiri::HTML(open('https://news.google.com.br/'))

  #   render text: page
  # end


end
