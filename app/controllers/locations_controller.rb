class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @airbnb = Zilyo.new(@location, ["airbnb"], 5)
  end
end
