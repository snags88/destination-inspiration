require 'open-uri'

class Zilyo

  URL = "https://zilyo.p.mashape.com/search?"
  API_HEADER = { "X-Mashape-Key" => ENV['mashape_key'],
                        "Accept" => "application/json"}



  def initialize(location, providers, num_of_results)
    @location = location
    @providers = providers
    @num_of_results = num_of_results
    api_call
    set_json
  end

  def api_call
    @response = Unirest.get(api_url, :headers => API_HEADER)
  end

  def set_json
    @result = JSON.load(@response.raw_body)
  end

  private
    def api_url
      URL + coordinates_string(@location) + providers_string(@providers) + results_per_page(@num_of_results)
    end

    def coordinates_string(location)
      "latitude=#{location.latitude.to_s}&longitude=#{location.longitude.to_s}"
    end

    def providers_string(providers)
      providers_string = providers.join("%2C")
     "&provider=#{providers_string}"
    end

    def results_per_page(num)
      "&resultsperpage=#{num}"
    end

end

    # Do we want id from the API? => ["id"]
    # t.string   "name" => ["attr"]["heading"]
    # t.text     "description" => ["attr"]["description"]
    # t.float    "nightly_cost" => ["price"]["nightly"]
    # t.integer  "capacity" => ["attr"]["occupancy"]
    # t.string   "lodging_type" => ["attr"]["propType"]["text"]
    # t.text     "booking_url" => ["provider"]["url"]
    # t.integer  "currency_id" => "USD"
    # t.integer  "location_id" => @location.id