# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = Location.create([
  {city: "Marrakech", country: "Morocco", region: "Africa", latitude: 31.630000, longitude: -8.008889, description: "Marrakech is a major city in the northwest African nation of Morocco. It is the fourth largest city in the country after Casablanca, Rabat and Fes, and is the capital of the mid-southwestern region of Marrakesh-Tensift-El Haouz..."},
  {city: "Siem Reap", country: "Cambodia", region: "Southeast Asia", latitude: 13.380936, longitude: 103.875046, description: "Siem Reap is the capital city of Siem Reap Province in northwestern Cambodia, and a popular resort town as the gateway to Angkor region. Siem Reap has colonial and Chinese-style architecture in the Old French Quarter, and around..."},
  {city: "Istanbul", country: "Turkey", region: "Europe", latitude: 41.005270, longitude: 28.976960, description: "Istanbul is the largest city in Turkey, constituting the country's economic, cultural, and historical heart. Istanbul is a transcontinental city in Eurasia, with its commercial and historical centre lying on the European side and..."},
  {city: "Hanoi", country: "Vietnam", region: "Southeast Asia", latitude: 21.027764, longitude: 105.834160, description: "Hanoi is the capital of Vietnam and the country's second largest city. Its population in 2009 was estimated at 2.6 million for urban districts, 6.5 million for the metropolitan jurisdiction. From 1010 until 1802, it was the most..."},
  {city: "Prague", country: "Czech Republic", region: "Europe", latitude: 50.075538, longitude: 14.437800, description: "Prague is the capital and largest city of the Czech Republic. It is the fourteenth-largest city in the European Union. It is also the historical capital of Bohemia. Situated in the north-west of the country on the Vltava River, the..."},
  {city: "London", country: "United Kingdom", region: "Europe", latitude: 51.507351, longitude: -0.127758, description: "London is the capital and most populous city of England and the United Kingdom. Standing on the River Thames, London has been a major settlement for two millennia, its history going back to its founding by the Romans, who named it..." },
  {city: "Berlin", country: "Germany", region: "Europe", latitude: 52.520007, longitude: 13.404954, description: "Berlin is the capital of Germany, and one of the 16 states of Germany. With a population of 3.5 million people, Berlin is Germany's largest city. It is the second most populous city proper and the seventh most populous urban area..."},
  {city: "Rome", country: "Italy", region: "Europe", latitude: 41.902783, longitude: 12.496366, description: "Rome is a city and special comune (named ''Roma Capitale'') in Italy. Rome is the capital of Italy and region of Lazio. With 2.9 million residents in 1,285 km2 (496.1 sq mi), it is also the country's largest and most populated comune..."},
  {city: "Buenos Aires", country: "Argentina", region: "South America", latitude: -34.603723, longitude: -58.381593, description: "Buenos Aires is the capital and largest city of Argentina, and the second-largest metropolitan area in South America, after Greater São Paulo. It is located on the western shore of the estuary of the Río de la Plata, on the continent's..."},
  {city: "New York City", country: "United States", region: "North America", latitude: 40.712784, longitude: -74.005941, description: "New York – often called New York City or the City of New York to distinguish it from the State of New York, of which it is a part – is the most populous city in the United States and the center of the New York metropolitan area, the... "}
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
Lodging.seed_data
Image.seed_images