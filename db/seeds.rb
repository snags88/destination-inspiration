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

Currency.seed_data
# Lodging.seed_data

Location.find_by(city: "Marrakech").images.create({url: "https://farm9.staticflickr.com/8580/15680040273_2e3e51202b_b.jpg", source: "https://www.flickr.com/photos/marasweltreisen", image_type: "hero", caption: "Marrakech"})
Location.find_by(city: "Siem Reap").images.create({url: "https://farm8.staticflickr.com/7447/8718052701_2e1a6b64da_h.jpg", source: " https://www.flickr.com/photos/chrisbastian", image_type: "hero", caption: "Siem Reap"})
Location.find_by(city: "Istanbul").images.create({url: "https://farm4.staticflickr.com/3812/13806413813_6c35ef719c_b.jpg", source: "https://www.flickr.com/photos/ahmetkilci", image_type: "hero", caption: "Istanbul"})
Location.find_by(city: "Hanoi").images.create({url: "https://farm8.staticflickr.com/7233/7384948350_485e8e12af_b.jpg", source: "https://www.flickr.com/photos/jean-pierre-chudeau", image_type: "hero", caption: "Hanoi"}
Location.find_by(city: "Prague").images.create({url: "https://farm8.staticflickr.com/7422/10066191593_326757cdf3_b.jpg", source: "https://www.flickr.com/photos/65789667@N06", image_type: "hero", caption: "Prague"})
Location.find_by(city: "London").images.create({url: "https://farm8.staticflickr.com/7002/6564991705_c4af8baa66_b.jpg", source: "https://www.flickr.com/photos/38181284@N06", image_type: "hero", caption: "London"})
Location.find_by(city: "Berlin").images.create({url: "https://farm4.staticflickr.com/3824/11844962716_6ec011a82e_b.jpg", source: "https://www.flickr.com/photos/david-bank", image_type: "hero", caption: "Berlin"})
Location.find_by(city: "Rome").images.create({url: "https://farm6.staticflickr.com/5013/5481288261_7de58f0c95_b.jpg", source: " https://www.flickr.com/photos/aigle_dore", image_type: "hero", caption: "Rome"})
Location.find_by(city: "Buenos Aires").images.create({url: "https://farm8.staticflickr.com/7648/16939983051_2e8c4959ae_b.jpg", source: "https://www.flickr.com/photos/german_long", image_type: "hero", caption: "Buenos Aires"})
Location.find_by(city: "New York City").images.create({url: "https://farm9.staticflickr.com/8465/8116884592_f563d97f06_b.jpg", source: "https://www.flickr.com/photos/stephenwalford", image_type: "hero", caption: "New York City"})

# Image.seed_images