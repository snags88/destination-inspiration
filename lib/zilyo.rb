require 'open-uri'

class Zilyo

  URL = "https://zilyo.p.mashape.com/search?"
  API_HEADER = { "X-Mashape-Key" => ENV['mashape_key'],
                        "Accept" => "application/json"}

  attr_accessor :result

  def initialize(location, providers, num_of_results, occupancy)
    @location = location
    @providers = providers
    @num_of_results = num_of_results
    @occupancy = occupancy
    api_call
    set_json
  end

  def api_call
    @response = Unirest.get(api_url, :headers => API_HEADER)
  end

  def set_json
    @result = JSON.load(@response.raw_body)["result"]
  end


  def listings_data
    @result.collect do |listing|
      listing_hash(listing)
    end
  end

  def listing_hash(listing)
     {"name" => listing["attr"]["heading"],
      "description" => listing["attr"]["description"],
      "nightly_cost" => listing["price"]["nightly"],
      "capacity" => listing["attr"]["beds"],
      "lodging_type" => listing["attr"]["propType"]["text"],
      "booking_url" => listing["provider"]["url"],
      "currency_id" => "USD",
      "location_id" => @location.id,
      "zilyo_id" => listing["id"]}
  end

  private
    def api_url
      URL + [occupany_string,coordinates_string, providers_string, results_per_page].join("&")
    end

    def coordinates_string
      "latitude=#{@location.latitude.to_s}&longitude=#{@location.longitude.to_s}"
    end

    def providers_string
      providers_string = @providers.join("%2C")
     "provider=#{providers_string}"
    end

    def results_per_page
      "resultsperpage=#{@num_of_results}"
    end

    def occupany_string
      "guests=#{@occupancy}"
    end
end