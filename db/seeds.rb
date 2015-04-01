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

Location.find_by(:country => "Morocco").currency_locations.create(:currency => Currency.find_by(:symbol => "AED"))
Location.find_by(:country => "Cambodia").currency_locations.create(:currency => Currency.find_by(:symbol => "KHR"))
Location.find_by(:country => "Turkey").currency_locations.create(:currency => Currency.find_by(:symbol => "TRY"))
Location.find_by(:country => "Vietnam").currency_locations.create(:currency => Currency.find_by(:symbol => "VND"))
Location.find_by(:country => "Czech Republic").currency_locations.create(:currency => Currency.find_by(:symbol => "CZK"))
Location.find_by(:country => "United Kingdom").currency_locations.create(:currency => Currency.find_by(:symbol => "GBP"))
Location.find_by(:country => "Germany").currency_locations.create(:currency => Currency.find_by(:symbol => "EUR"))
Location.find_by(:country => "Italy").currency_locations.create(:currency => Currency.find_by(:symbol => "EUR"))
Location.find_by(:country => "Argentina").currency_locations.create(:currency => Currency.find_by(:symbol => "ARS"))
Location.find_by(:country => "United States").currency_locations.create(:currency => Currency.find_by(:symbol => "USD"))

Currency.seed_data
Lodging.seed_data
Image.seed_images