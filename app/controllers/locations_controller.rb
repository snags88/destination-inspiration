class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    @sample_lodgings = @location.lodgings.sample(4)
    @lodging_analytics = Lodging.lodging_query_array(@location)
    @weather = Wunderground.new
    @attraction = Attraction.new
  end
end
