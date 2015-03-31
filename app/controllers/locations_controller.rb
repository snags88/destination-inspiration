class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @sample_lodgings = @location.lodgings.sample(4)
    @weather = Wunderground.new
  end
end
