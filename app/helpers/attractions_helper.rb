module AttractionsHelper

  def link_to_edit(attraction)
    link_to("Edit", edit_location_attraction_path(attraction.location, attraction), remote: true)
  end

  def link_to_destroy(attraction)
    link_to("Destroy", [attraction.location, attraction], remote: true, method: :delete)
  end
end