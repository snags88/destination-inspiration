# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([
  {city: "Marrakech", country: "Morocco", region: "Africa"},
  {city: "Siem Reap", country: "Cambodia", region: "Southeast Asia"},
  {city: "Istanbul", country: "Turkey", region: "Europe"},
  {city: "Hanoi", country: "Vietnam", region: "Southeast Asia"},
  {city: "Prague", country: "Czech Republic", region: "Europe"},
  {city: "London", country: "United Kingdom", region: "Europe"},
  {city: "Berlin", country: "Germany", region: "Europe"},
  {city: "Rome", country: "Italy", region: "Europe"},
  {city: "Buenos Aires", country: "Argentina", region: "South America"},
  {city: "New York City", country: "United States", region: "North America"}
])