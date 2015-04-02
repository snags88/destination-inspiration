# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([
  {city: "Marrakech", country: "Morocco", region: "Africa", latitude: 31.630000, longitude: -8.008889},
  {city: "Siem Reap", country: "Cambodia", region: "Southeast Asia", latitude: 13.380936, longitude: 103.875046},
  {city: "Istanbul", country: "Turkey", region: "Europe", latitude: 41.005270, longitude: 28.976960},
  {city: "Hanoi", country: "Vietnam", region: "Southeast Asia", latitude: 21.027764, longitude: 105.834160},
  {city: "Prague", country: "Czech Republic", region: "Europe", latitude: 50.075538, longitude: 14.437800},
  {city: "London", country: "United Kingdom", region: "Europe", latitude: 51.507351, longitude: -0.127758},
  {city: "Berlin", country: "Germany", region: "Europe", latitude: 52.520007, longitude: 13.404954},
  {city: "Rome", country: "Italy", region: "Europe", latitude: 41.902783, longitude: 12.496366},
  {city: "Buenos Aires", country: "Argentina", region: "South America", latitude: -34.603723, longitude: -58.381593},
  {city: "New York City", country: "United States", region: "North America", latitude: 40.712784, longitude: -74.005941}
])

Currency.seed_data

Location.find_by(city: "Marrakech").currency_locations.create(:currency => Currency.find_by(:symbol => "AED"))
Location.find_by(city: "Siem Reap").currency_locations.create(:currency => Currency.find_by(:symbol => "KHR"))
Location.find_by(city: "Istanbul").currency_locations.create(:currency => Currency.find_by(:symbol => "TRY"))
Location.find_by(city: "Hanoi").currency_locations.create(:currency => Currency.find_by(:symbol => "VND"))
Location.find_by(city: "Prague").currency_locations.create(:currency => Currency.find_by(:symbol => "CZK"))
Location.find_by(city: "London").currency_locations.create(:currency => Currency.find_by(:symbol => "GBP"))
Location.find_by(city: "Berlin").currency_locations.create(:currency => Currency.find_by(:symbol => "EUR"))
Location.find_by(city: "Rome").currency_locations.create(:currency => Currency.find_by(:symbol => "EUR"))
Location.find_by(city: "Buenos Aires").currency_locations.create(:currency => Currency.find_by(:symbol => "ARS"))
Location.find_by(city: "New York City").currency_locations.create(:currency => Currency.find_by(:symbol => "USD"))

languages = %w(Arabic Berber Central Khmer English Turkish Vietnamese Czech Slovak German Italian Spanish)
languages.each do |language|
  Language.create(:name => language)
end

Location.find_by(city: "Marrakech").language_locations.create(:language => Language.find_by(:name => "Arabic"))
Location.find_by(city: "Marrakech").language_locations.create(:language => Language.find_by(:name => "Berber"))
Location.find_by(city: "Siem Reap").language_locations.create(:language => Language.find_by(:name => "Central Khmer"))
Location.find_by(city: "Siem Reap").language_locations.create(:language => Language.find_by(:name => "English"))
Location.find_by(city: "Istanbul").language_locations.create(:language => Language.find_by(:name => "Turkish"))
Location.find_by(city: "Hanoi").language_locations.create(:language => Language.find_by(:name => "Vietnamese"))
Location.find_by(city: "Prague").language_locations.create(:language => Language.find_by(:name => "Czech"))
Location.find_by(city: "Prague").language_locations.create(:language => Language.find_by(:name => "Slovak"))
Location.find_by(city: "Prague").language_locations.create(:language => Language.find_by(:name => "English"))
Location.find_by(city: "London").language_locations.create(:language => Language.find_by(:name => "English"))
Location.find_by(city: "Berlin").language_locations.create(:language => Language.find_by(:name => "German"))
Location.find_by(city: "Berlin").language_locations.create(:language => Language.find_by(:name => "English"))
Location.find_by(city: "Rome").language_locations.create(:language => Language.find_by(:name => "Italian"))
Location.find_by(city: "Buenos Aires").language_locations.create(:language => Language.find_by(:name => "Spanish"))
Location.find_by(city: "Buenos Aires").language_locations.create(:language => Language.find_by(:name => "Italian"))
Location.find_by(city: "New York City").language_locations.create(:language => Language.find_by(:name => "English"))

Lodging.seed_data
Image.seed_images