require 'open-uri'

class Zilyo

  URL = "https://zilyo.p.mashape.com/search?"
  API_HEADER = { "X-Mashape-Key" => ENV['mashape_key'],
                        "Accept" => "application/json"}

  attr_accessor :result, :page

  def initialize(location, providers)
    @location = location
    @providers = providers
  end

  def referesh_dataset(page)
    @page = page
    api_call
    set_json
  end

  def api_call
    Unirest::timeout(45)
    @response = Unirest.get(api_url, :headers => API_HEADER)
  end

  def set_json
    @result = JSON.load(@response.raw_body)["result"]
  end

  def listings_data
    @result.collect do |listing|
      filtered_listing(listing_hash(listing))
    end.compact
  end

  def listing_hash(listing)
     {"name" => listing["attr"]["heading"],
      "description" => listing["attr"]["description"],
      "nightly_cost" => listing["price"]["nightly"],
      "num_of_beds" => listing["attr"]["beds"],
      "lodging_type" => listing["attr"]["propType"]["text"],
      "booking_url" => listing["provider"]["url"],
      "currency" => Currency.find_by(:symbol => "USD"),
      "location_id" => @location.id,
      "zilyo_id" => listing["id"]}
  end

  def filtered_listing(hash)
    if hash["num_of_beds"] > 8
      nil
    elsif hash["lodging_type"] == "Hostel"
      hash["num_of_beds"] = 1
      hash
    else
      hash
    end
  end

  private
    def api_url
      URL + [coordinates_string, max_distance, page_num, providers_string, results_per_page].join("&")
    end

    def coordinates_string
      "latitude=#{@location.latitude.to_s}&longitude=#{@location.longitude.to_s}"
    end

    def providers_string
      providers_string = @providers.join("%2C")
     "provider=#{providers_string}"
    end

    def results_per_page
      "resultsperpage=50"
    end

    def max_distance
      "maxdistance=80"
    end

    def page_num
      "page=#{@page}"
    end

end