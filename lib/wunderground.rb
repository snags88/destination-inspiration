require 'open-uri'

# http://api.wunderground.com/api/#{ENV["wunderground_key"]}/geolookup/q/37.776289,-122.395234.json

class Wunderground
 URL = "http://api.wunderground.com/api/#{ENV['wunderground_key']}/conditions/q/"

 attr_accessor :weather_json

 def initialize()

 end

 def api_call(location)
   link = URL + location.latitude.to_s + "," + location.longitude.to_s + ".json"
   self.weather_json = JSON.load(open(link))
 end

#  def current_weather
#    current_hour = self.weather_json[0]
#    [get_weather(current_hour)]
#  end

#  def forecast_weather
#    self.weather_json[1..12].collect do |hourly_hash|
#      get_weather(hourly_hash)
#    end
#  end

#  def get_weather(hourly_hash)
#    {"hour" => get_hour(hourly_hash),
#    "temp" => get_temp(hourly_hash),
#    "condition" => get_condition(hourly_hash)}
#  end

#  def get_hour(hourly_hash)
#    hourly_hash["FCTTIME"]["hour"]
#  end

#  def get_temp(hourly_hash)
#    hourly_hash["temp"]["english"]
#  end

#  def get_condition(hourly_hash)
#    hourly_hash["condition"]
#  end
# end

# We wanted to store our data like so:
#  current_weather = [
#   {:hour => 8,
#    :temp => 43,
#    :condition => "cloudy"}]
#
# forecast_weather = [
#   {:hour => 9,
#    :temp => 45,
#    :condition => "cloudy"},
#   {:hour => 10,
#    :temp => 46,
#    :condition => "cloudy"},
#    ...
# ]