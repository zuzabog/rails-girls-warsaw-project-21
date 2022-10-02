class WelcomeController < ApplicationController
  def index
    @pictures = Picture.all.order(date: :desc)
    @websites = Website.all.order(:title)
    @entries = Entry.all.order(date: :desc)
  end
  
end

