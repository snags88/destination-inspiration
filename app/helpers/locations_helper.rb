module LocationsHelper

  def attraction_by_type(type)
    attractions = @location.attractions.where(:attraction_type => type)
    render partial: "locations/attractions/show", collection: attractions, as: :attraction
  end
end
