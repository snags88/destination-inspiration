module LocationsHelper

  def attraction_by_type(type)
    attractions = @location.attractions.where(:attraction_type => type)
    render partial: "locations/attraction", collection: attractions, as: :attraction
  end
end
