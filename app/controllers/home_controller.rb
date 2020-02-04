class HomeController < ApplicationController

  def index
    @events = Event.all
    render :index
  end
end
