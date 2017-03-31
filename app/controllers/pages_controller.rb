class PagesController < ApplicationController
  def index
    @newsvilles = Newsville.all.first(4)

    @comments = Comment.all.first(30)

  end
end
