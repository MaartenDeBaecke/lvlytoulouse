class PagesController < ApplicationController
  def home
    @page_title = "Lovely Toulouse | Home"
  end

  def food
    @page_title = "Lovely Toulouse | Food"
  end

  def toys
    @page_title = "Lovely Toulouse | Toys"
  end

  def handy_stuff
    @page_title = "Lovely Toulouse | Handy Stuff"
  end
end
