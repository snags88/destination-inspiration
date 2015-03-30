# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([
  {city: "Marrakech", country: "Morocco", region: "Africa", latitude: 31.630000, longitude: -8.008889},
  {city: "Siem Reap", country: "Cambodia", region: "Southeast Asia", latitude: 13.691538, longitude: 104.100133},
  {city: "Istanbul", country: "Turkey", region: "Europe", latitude: 41.005270, longitude: 28.976960},
  {city: "Hanoi", country: "Vietnam", region: "Southeast Asia", latitude: 21.027764, longitude: 105.834160},
  {city: "Prague", country: "Czech Republic", region: "Europe", latitude: 50.075538, longitude: 14.437800},
  {city: "London", country: "United Kingdom", region: "Europe", latitude: 51.507351, longitude: -0.127758},
  {city: "Berlin", country: "Germany", region: "Europe", latitude: 52.520007, longitude: 13.404954},
  {city: "Rome", country: "Italy", region: "Europe", latitude: 41.902783, longitude: 12.496366},
  {city: "Buenos Aires", country: "Argentina", region: "South America", latitude: -34.603723, longitude: -58.381593},
  {city: "New York City", country: "United States", region: "North America", latitude: 40.712784, longitude: -74.005941}
])