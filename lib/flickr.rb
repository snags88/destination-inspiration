require 'open-uri'

class Flickr

  SEARCH_URL = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=#{ENV["flickr_key"]}&sort=relevance&format=json&nojsoncallback=1"

  OWNER_URL = "https://api.flickr.com/services/rest/?method=flickr.people.getInfo&api_key=129caade072f51df051a20980f3cc86d&format=json&nojsoncallback=1"

  attr_reader :gallery, :country

  def initialize(location_obj, num_of_results)
    @latitude = location_obj.latitude
    @longitude = location_obj.longitude
    @country = location_obj.country
    @location_id = location_obj.id
    @num = num_of_results
  end

  # COLLECTING IMAGE DATA INTO A NESTED COLLECTION

  def collect_gallery

    @gallery ||= random_photos.collect do |photo|
      # FOR THE STATIC URL:
        farm_id = photo["farm"]
        server_id = photo["server"]
        photo_id = photo["id"]
        secret = photo["secret"]
        url = "https://farm#{farm_id}.staticflickr.com/#{server_id}/#{photo_id}_#{secret}.jpg"
      
      # CAPTION
      caption = photo["title"]

      # FOR THE OWNER DEETS
      @owner_id = photo["owner"]
      source = owner_json["person"]["profileurl"]["_content"]

      # RETURN A HASH REPRESENTING THIS PHOTO

      {
        url: url,
        caption: caption,
        source: source,
        location_id: @location_id,
        image_type: "gallery"
      }

    end
    
  end

  private
  # PHOTO SEARCH

  def photo_json
    @photo_json ||= JSON.load(open(photo_search_url))
  end

  def photo_search_url
    "#{SEARCH_URL}#{country_tag}#{location_tags}"
  end

  def country_tag
    country_slug = @country.split(" ").join("+")
    "&tags=#{country_slug}"
  end

  def location_tags
    "&lat=#{@latitude}&lon=#{@longitude}"
  end

  def photo_array
    photo_json["photos"]["photo"]
  end

  def random_photos
    random_indexes.collect{ |i| photo_array[i]}
  end

  def random_indexes
    @num.times.collect{ |i| rand(50)}
  end

  # OWNER AND SOURCE SEARCH

  def owner_json
    @owner_json = JSON.load(open(owner_search_url))
  end

  def owner_search_url
    "#{OWNER_URL}#{owner_id_slug}"
  end

  def owner_id_slug
    owner_id_slug = @owner_id.gsub(/@/, '%40') 
    "&user_id=#{owner_id_slug}"
  end

end
