class Locations::AttractionsController < ApplicationController

  def new
  end

  def create

    @attraction = Attraction.new(attraction_params)
    @attraction.location_id = params[:location_id]

    if @attraction.save
      redirect_to @attraction.location
    else
      render 'locations/show'
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