class Locations::AttractionsController < ApplicationController

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.location_id = params[:location_id]
    @attraction.save
  end

  def edit
    @attraction = Attraction.find_by_params(params)
    @location = @attraction.location
  end

  def update
    @attraction = Attraction.find_by_params(params)
    @location = @attraction.location
    @attraction.update(attraction_params)
  end

  def destroy
    @attraction = Attraction.find_by_params(params)
    @attraction.destroy
  end


  private
    def attraction_params
      params.require(:attraction).permit(:name, :description, :attraction_type)
    end

end