require 'open-uri'

# http://api.wunderground.com/api/#{ENV["wunderground_key"]}/geolookup/q/37.776289,-122.395234.json
#http://api.wunderground.com/api/Your_Key/history_YYYYMMDD/q/CA/San_Francisco.json
#http://api.wunderground.com/api/Your_Key/forecast/q/CA/San_Francisco.json

class Wunderground
 URL = "http://api.wunderground.com/api/#{ENV['wunderground_key']}"

 attr_accessor :weather_json, :current_weather_JSON, :forecast_JSON

 def initialize()

 end

 # def api_call(location)
 #   link = URL + location.latitude.to_s + "," + location.longitude.to_s + ".json"
 #   self.weather_json = JSON.load(open(link))
 # end

 def api_call(url)
   JSON.load(open(url))
 end

 def current_weather_URL (location)
   link = URL + "/conditions/q/" + location.latitude.to_s + "," + location.longitude.to_s + ".json"
 end 

 def forecast_URL(location)
   link = URL + "/forecast/q/" + location.latitude.to_s + "," + location.longitude.to_s + ".json"
 end

 def current_weather (location)
   #@current_weather_JSON IS weather
   url = current_weather_URL(location)
   @current_weather_JSON ||= api_call(url)
   {"temp_string" => @current_weather_JSON["current_observation"]["temperature_string"],
   "condition" => @current_weather_JSON["current_observation"]["weather"] ,
   "icon_url" => @current_weather_JSON["current_observation"]["icon_url"]}
 end

 def forecast_text (location)
   url = forecast_URL(location)
   @forecast_JSON ||= api_call(url)
   @forecast_JSON["forecast"]["txt_forecast"]["forecastday"].first["fcttext"]
 end


 #weather["current_observation"]["weather"] 
 #weather["current_observation"]["temperature_string"] #45.5 F (7.5 C)
#weather["current_observation"]["icon_url"] 

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
end

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