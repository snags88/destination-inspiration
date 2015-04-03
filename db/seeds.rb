# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

locations = [
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
]

locations.each do |place_hash|
  loc = Location.find_by(:city => place_hash[:city])
  loc.update(place_hash)
end

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

# Lodging.seed_data

Location.find_by(city: "Marrakech").images.create({url: "https://farm9.staticflickr.com/8580/15680040273_2e3e51202b_b.jpg", source: "https://www.flickr.com/photos/marasweltreisen", image_type: "hero", caption: "Marrakech"})
Location.find_by(city: "Siem Reap").images.create({url: "https://farm8.staticflickr.com/7447/8718052701_2e1a6b64da_h.jpg", source: "https://www.flickr.com/photos/chrisbastian", image_type: "hero", caption: "Siem Reap"})
Location.find_by(city: "Istanbul").images.create({url: "https://farm4.staticflickr.com/3812/13806413813_6c35ef719c_b.jpg", source: "https://www.flickr.com/photos/ahmetkilci", image_type: "hero", caption: "Istanbul"})
Location.find_by(city: "Hanoi").images.create({url: "https://farm8.staticflickr.com/7233/7384948350_485e8e12af_b.jpg", source: "https://www.flickr.com/photos/jean-pierre-chudeau", image_type: "hero", caption: "Hanoi"})
Location.find_by(city: "Prague").images.create({url: "https://farm8.staticflickr.com/7422/10066191593_326757cdf3_b.jpg", source: "https://www.flickr.com/photos/65789667@N06", image_type: "hero", caption: "Prague"})
Location.find_by(city: "London").images.create({url: "https://farm8.staticflickr.com/7002/6564991705_c4af8baa66_b.jpg", source: "https://www.flickr.com/photos/38181284@N06", image_type: "hero", caption: "London"})
Location.find_by(city: "Berlin").images.create({url: "https://farm4.staticflickr.com/3824/11844962716_6ec011a82e_b.jpg", source: "https://www.flickr.com/photos/david-bank", image_type: "hero", caption: "Berlin"})
Location.find_by(city: "Rome").images.create({url: "https://farm6.staticflickr.com/5013/5481288261_7de58f0c95_b.jpg", source: " https://www.flickr.com/photos/aigle_dore", image_type: "hero", caption: "Rome"})
Location.find_by(city: "Buenos Aires").images.create({url: "https://farm8.staticflickr.com/7648/16939983051_2e8c4959ae_b.jpg", source: "https://www.flickr.com/photos/german_long", image_type: "hero", caption: "Buenos Aires"})
Location.find_by(city: "New York City").images.create({url: "https://farm9.staticflickr.com/8465/8116884592_f563d97f06_b.jpg", source: "https://www.flickr.com/photos/stephenwalford", image_type: "hero", caption: "New York City"})

# Image.seed_images

## New York Attractions
new_york = Location.find_by(city: "New York City")
Attraction.create(:name => "Statue of Liberty", :description => "The Statue of Liberty is a colossal neoclassical sculpture on Liberty Island in New York Harbor in New York City, in the United States. The statue, designed by Frédéric Auguste Bartholdi, a French sculptor and dedicated on October 28, 1886, was a gift to the United States from the people of France.", :attraction_type => "Landmarks" ,:location => new_york)
Attraction.create(:name => "Empire State Building", :description => "The Empire State Building is a 102-story skyscraper located in Midtown Manhattan, New York City, on Fifth Avenue between West 33rd and 34th Streets. It has a roof height of 1,250 feet (380 m), and with its antenna spire included, it stands a total of 1,454 feet (443 m) high. Its name is derived from the nickname for New York, the Empire State. It stood as the world's tallest building for nearly 40 years, from its completion in early 1931 until the topping out of the original World Trade Center's North Tower in late 1970. Following the September 11 attacks in 2001, the Empire State Building was again the tallest building in New York (although it was no longer the tallest in the US or the world), until One World Trade Center reached a greater height on April 30, 2012. The Empire State Building is currently the fourth-tallest completed skyscraper in the United States (after the One World Trade Center, the Willis Tower and Trump International Hotel and Tower, both in Chicago), and the 25th-tallest in the world (the tallest now is Burj Khalifa, located in Dubai). It is also the fifth-tallest freestanding structure in the Americas.", :attraction_type => "Landmarks" ,:location => new_york)
Attraction.create(:name => "One World Trade Center", :description => "One World Trade Center (also known as 1 World Trade Center, One WTC and 1 WTC; the current building was dubbed the Freedom Tower during initial basework) refers to the main building of the new World Trade Center complex in Lower Manhattan, New York City. It is the tallest skyscraper in the Western Hemisphere, and the fourth-tallest in the world. The 104-story supertall structure shares a numeric name with the northern Twin Tower of the original World Trade Center, which was destroyed in the terrorist attacks of September 11, 2001. The new skyscraper stands on the northwest corner of the 16-acre (6.5 ha) World Trade Center site, on the site of the original 6 World Trade Center. The building is bordered by West Street to the west, Vesey Street to the north, Fulton Street to the south, and Washington Street to the east.", :attraction_type => "Landmarks" ,:location => new_york)
Attraction.create(:name => "Colicchio & Sons", :description => "Established in 2010, borrowing from the historic High Line just outside its doors, the interior of Colicchio & Sons, with its vaulted ceilings, riveted steel columns and expansive windows, pays homage to its legendary former tenant, the National Biscuit Company. In Tap Room, guests can enjoy a menu of specialties from the wood-burning hearth, an extensive selection of artisan beers, as well as a distinctive wine list by the glass and bottle. The Main Dining Room menu focuses on seasonal dishes prepared with small-batch ingredients from micro-producers and family farmers.  In both food and décor, Colicchio & Sons is the restaurant where time-honored materials and techniques meet the inventiveness of a new and optimistic decade.", :attraction_type => "Dining" ,:location => new_york)
Attraction.create(:name => "Gramercy Tavern", :description => "One of America’s most beloved restaurants, Gramercy Tavern has welcomed guests to enjoy its contemporary American cuisine, warm hospitality, and unparalleled service for close to two decades. Chef Michael Anthony’s fiercely seasonal menu consists of elegant dishes with a rustic influence that showcase the restaurant’s relationships with local farms and purveyors.

The restaurant can be enjoyed through two distinct dining experiences: the Tavern and the Dining Room. The Tavern serves an à la carte menu in a casual, walk-in setting and offers a daily four-course tasting menu at dinner. The Dining Room offers fixed-price and tasting menus with an à la carte option at lunch.

Opened in 1994 by legendary restaurateur Danny Meyer in a historic landmark building, the restaurant is designed by Bentel & Bentel with murals from artist Robert Kushner and vibrant floral arrangements from Roberta Bendavid.", :attraction_type => "Dining" ,:location => new_york)
Attraction.create(:name => "Eleven Madison Park", :description => "Established in 1998, Eleven Madison Park embodies an urbane sophistication serving Chef Daniel Humm's modern, sophisticated French cuisine that emphasizes purity, simplicity and seasonal flavors and ingredients.  Daniel's delicate and precise cooking style is experienced through a constantly evolving menu. The restaurant's dramatically high ceilings and magnificent art deco dining room offer guests lush views of historic Madison Square Park and the Flatiron building. In addition to the main dining room, guests may also enjoy wine, beer, and cocktails, as well as an extensive bar menu in the restaurant's bar and Flatiron Lounge.
In November 2008, Eleven Madison Park was designated Grand Chef Relais & Châteaux, joining the ranks of one of the world's most exclusive associations of hotels and gourmet restaurants. In 2009, Eleven Madison Park received a Four Star Review from The New York Times. The restaurant was also awarded one Michelin star.", :attraction_type => "Dining" ,:location => new_york)
Attraction.create(:name => "Broadway", :description => "Broadway theatre, commonly known as Broadway, refers to the theatrical performances presented in the 40 professional theatres with 500 or more seats located in the Theater District and Lincoln Center along Broadway, in the New York City borough of Manhattan. Along with London's West End theatres, Broadway theatres are widely considered to represent the highest level of commercial theatre in the English-speaking world.

The Broadway Theater District is a popular tourist attraction in New York City. According to The Broadway League, Broadway shows sold a record US$1.36 billion worth of tickets in 2014, an increase of 14% over the previous year. Attendance in 2014 stood at 13.13 million, a 13% increase over 2013.

The great majority of Broadway shows are musicals. Historian Martin Shefter argues, \"'Broadway musicals,' culminating in the productions of Richard Rodgers and Oscar Hammerstein, became enormously influential forms of American popular culture\" and helped make New York City the cultural capital of the nation.", :attraction_type => "Other" ,:location => new_york)
Attraction.create(:name => "Central Park", :description => "Central Park is an urban park in the central part of the borough of Manhattan, New York City. It was initially opened in 1857, on 778 acres (315 ha) of city-owned land, later expanding to its current size of 843 acres (341 ha).

In 1858, soon-to-be famed national landscapers and architects, Frederick Law Olmsted and Calvert Vaux, won a design competition to improve and expand the park with a plan they titled the \"Greensward Plan\". Construction began the same year, continued during the American Civil War further south, and was completed in 1873. It was designated a National Historic Landmark (listed by the U.S. Department of the Interior and administered by the National Park Service) in 1962. The Park was managed for decades by the New York City Department of Recreation and Parks and is currently managed by the Central Park Conservancy under contract with the municipal government in a public-private partnership. The Conservancy is a non-profit organization that contributes 75% of Central Park's $57 million annual budget and employs 80.7% of the Park's maintenance staff.

Today, Central Park is the most visited urban park in the United States as well as one of the most filmed locations in the world.", :attraction_type => "Other" ,:location => new_york)
Attraction.create(:name => "The Metropolitan Museum of Art", :description => "The Metropolitan Museum of Art (colloquially The Met), located in New York City, is the largest art museum in the United States and one of the ten largest in the world. Its permanent collection contains more than two million works, divided among seventeen curatorial departments. The main building, located on the eastern edge of Central Park along Manhattan's Museum Mile, is by area one of the world's largest art galleries. There is also a much smaller second location at The Cloisters in Upper Manhattan that features medieval art.

Represented in the permanent collection are works of art from classical antiquity and Ancient Egypt, paintings and sculptures from nearly all the European masters, and an extensive collection of American and modern art. The Met also maintains extensive holdings of African, Asian, Oceanic, Byzantine, and Islamic art. The museum is also home to encyclopedic collections of musical instruments, costumes and accessories, and antique weapons and armor from around the world. Several notable interiors, ranging from first-century Rome through modern American design, are permanently installed in the Met's galleries.

The Metropolitan Museum of Art was founded in 1870. The founders included businessmen and financiers, as well as leading artists and thinkers of the day, who wanted to open a museum to bring art and art education to the American people. It opened on February 20, 1872, and was originally located at 681 Fifth Avenue.

As of 2012, the Met occupies about 2,000,000 square feet (190,000 m2). Admission is pay what you wish with a recommendation of $25.", :attraction_type => "Other" ,:location => new_york)

### Buenos Aires Attractions
buenos_aires = Location.find_by(city: "Buenos Aires")
Attraction.create(:name => "Buenos Aires Metropolitan Cathedral", :description => "The Buenos Aires Metropolitan Cathedral (Spanish: Catedral Metropolitana de Buenos Aires) is the main Catholic church in Buenos Aires, Argentina. It is located in the city center, overlooking Plaza de Mayo, on the corner of San Martín and Rivadavia streets, in the San Nicolás neighbourhood. It is the mother church of the Archdiocese of Buenos Aires.

The Cathedral of Buenos Aires was rebuilt several times since its humble origins in the 16th century. The present building is a mix of architectural styles, with an 18th-century nave and dome and a severe, 19th-century Neoclassical façade without towers. The interior keeps precious 18th-century statues and altarpieces, as well as abundant Neo-Renaissance and Neo-Baroque decoration.", :attraction_type => "Landmarks" ,:location => buenos_aires)
Attraction.create(:name => "Obelisco de Buenos Aires", :description => "The Obelisco de Buenos Aires (Obelisk of Buenos Aires) is a national historic monument and icon of Buenos Aires. Located in the Plaza de la República, in the intersection of avenues Corrientes and 9 de Julio, it was built to commemorate the fourth centenary of the first foundation of the city.

In order to enrich the surroundings of the iconic monument, the government of the city started the project Punto Obelisco, creating a zone full of LED signs. Since the Obelisk of the city is always associated with the night and entertainment of Buenos Aires, this project creates a zone similar to Times Square in New York and Piccadilly Circus in London.", :attraction_type => "Landmarks" ,:location => buenos_aires)
Attraction.create(:name => "Teatro Colón", :description => "The Teatro Colón (Spanish) (Colón Theatre) is the main opera house in Buenos Aires, Argentina. It is ranked the third best opera house in the world by National Geographic, and is acoustically considered to be amongst the five best concert venues in the world. The other venues are Berlin's Konzerthaus, Vienna's Musikverein, the Concertgebouw in Amsterdam, and Boston's Symphony Hall.

The present Colón replaced an original theatre which opened in 1857. Towards the end of the century it became clear that a new theatre was needed and, after a 20-year process, the present theatre opened on 25 May 1908, with Giuseppe Verdi's Aïda.

The Teatro Colón was visited by the foremost singers and opera companies of the time, who would sometimes go on to other cities including Montevideo, Rio de Janeiro and São Paulo.

After this period of huge international success, the theatre's decline became clear and plans were made for massive renovations. After an initial start of works to restore the landmark in 2005, the theatre was closed for refurbishment from October 2006 to May 2010. It re-opened on 24 May 2010, with a programme for the 2010 season.", :attraction_type => "Landmarks" ,:location => buenos_aires)
Attraction.create(:name => "I Latina", :description => "Colombian siblings Santiago, Camilo and Laura Macías, created this fine dining restaurant to bring the best gastronomic flavors from the Caribbean coast of Colombia to Buenos Aires. Santiago is the chef of the restaurant. Laura and Camilo will be your hosts.Every Tuesday through Saturday evening, we offer a seven-course tasting menu in which you will discover different flavors and ingredients of the latin american cuisine, paired with the best Argentine wines. We are located in a beautiful house in the Villa Crespo neighborhood of Buenos Aires. Reservations are required and can be made by phone or email. We invite you to discover new flavors and enjoy a completely unique gastronomic experience.", :attraction_type => "Dining" ,:location => buenos_aires)
Attraction.create(:name => "La Bourgogne", :description => "La Bourgogne offers the best French cuisine in Buenos Aires, where the Grand Chef Relais & Châteaux Jean Paul Bondoux delights and surprises our most discerning customers.

In a refined and warm environment, guests enjoy his exquisite French and international dishes.", :attraction_type => "Dining" ,:location => buenos_aires)
Attraction.create(:name => "Chila", :description => "CHILA has gourmet cuisine with Argentinian products. CHILA has several prizes: Position 21th in the 50 best restaurant in latinamerica 2014, Position 28th in the 50 best Restauraants in Latinamerica 2013 (San Pellegrino guide), Best Argentinian Restaurant 2008 (Argentinian Academy of Gastronomy), CHEF of the Future 2009 (International Academy of Gastronomy, Best Restaurant 2010 (Cuisine & Vins).", :attraction_type => "Dining" ,:location => buenos_aires)
Attraction.create(:name => "Buenos Aires Zoo", :description => "The Buenos Aires Zoo is an 45-acre (18 ha) zoo in the Palermo district of Buenos Aires, Argentina. The Zoo contains 89 species of mammals, 49 species of reptiles and 175 species of birds, with a total of over 2,500 different animals. The institution's goals are to conserve species, produce research and to educate the public.", :attraction_type => "Other" ,:location => buenos_aires)
Attraction.create(:name => "La Boca", :description => "La Boca is a neighborhood, or barrio of the Argentine capital, Buenos Aires. It retains a strong European flavour, with many of its early settlers being from the Italian city of Genoa. In fact the name has a strong assonance with the Genoese neighborhood of Boccadasse (or Bocadaze in Genoese dialect), and some people believe that the Buenos Aires barrio was indeed named after it. The conventional explanation is that the neighborhood sits at the mouth (\"boca\" in Spanish) of the Riachuelo.", :attraction_type => "Other" ,:location => buenos_aires)
Attraction.create(:name => "Flea Market Mercado de Pulgas", :description => "Right in the boundary between Palermo and Colegiales is the flea market. Inside this large warehouse, visitors will find numerous stalls selling antiquities, furniture, light fixtures, silverware, collectors' items and decorative objects, to name just a few of the offerings.", :attraction_type => "Other" ,:location => buenos_aires)