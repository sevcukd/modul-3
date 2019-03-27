class PagesController < ApplicationController
  def index
    @hotels = Hotel.all
    @rooms = Room.all
  end

  def gallery
  end

  def contacts
  end
end
