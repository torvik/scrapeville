class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # def google_news
  #   #require 'nokogiri'
  #   require 'open-uri'

  #   page = Nokogiri::HTML(open('https://news.google.com.br/'))

  #   render text: page
  # end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path
    flash[:alert] = "Sorry, you are not authorized to access this area!"
  end


end
