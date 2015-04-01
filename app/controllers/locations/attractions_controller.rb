class Locations::AttractionsController < ApplicationController

  def create
    @attraction = Attraction.new(attraction_params)
    @attraction.location_id = params[:location_id]
    @attraction.save
    respond_to do |f|
      f.js
    end
  end

  def update
  end

  def destroy
  end


  private

  def attraction_params
    params.require(:attraction).permit(:name, :description, :attraction_type)
  end

end