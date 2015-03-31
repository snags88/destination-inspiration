require 'open-uri'

class Flickr

  SEARCH_URL = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{ENV["flickr_key"]}&sort=relevance&format=json&nojsoncallback=1"

  attr_accessor :gallery, :country

  def initialize(location_obj, num_of_results)
    @latitude = location_obj.latitude
    @longitude = location_obj.longitude
    @country = location_obj.country
    @num = num_of_results
  end

  def gallery
    binding.pry
  end

  private

  def json
    @json ||= JSON.load(open(api_search_url))
  end

  def api_search_url
    "#{SEARCH_URL}#{country_tag}#{location_tags}"
  end

  def country_tag
    country_slug = @country.split(" ").join("+")
    "&tags=#{country_slug}"
  end

  def location_tags
    "&lat=#{@latitude}&lon=#{@longitude}"
  end

  def image_urls_collector

    random_photos.collect do |photo|
      farm_id = photo["farm"]
      server_id = photo["server"]
      photo_id = photo["id"]
      secret = photo["secret"]
      size = "m"

      "https://farm#{farm_id}.staticflickr.com/#{server_id}/#{photo_id}_#{secret}.jpg"
    end
    
  end

  def photo_array
    json["photos"]["photo"]
  end

  def random_photos
    random_indexes.collect{ |i| photo_array[i]}
  end

  def random_indexes
    @num.times.collect{ |i| rand(50)}
  end

end
