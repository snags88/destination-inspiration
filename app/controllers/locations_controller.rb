class LocationsController < ApplicationController

  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
    
    @weather = Wunderground.new
    
    @attraction = Attraction.new
    
    @lodging_analytics = Lodging.lodging_query_array(@location)
    @sample_lodgings = @location.lodgings.sample(3)

  end
end
