class Lodging < ActiveRecord::Base
  belongs_to :currency
  belongs_to :location

  def self.lodging_query_array(location)
    [1,2,4].collect do |num_of_beds|
      self.avg_cost_by_bed(location, num_of_beds)
    end
  end

  def self.avg_cost_by_bed(location, num_of_beds)
    select("AVG(nightly_cost) as average_cost, num_of_beds as beds").
    where("location_id = ? AND num_of_beds = ?", location.id, num_of_beds).
    group(:num_of_beds).
    first
  end

  def self.seed_data
    Location.all.each do |location|
      zilyo = Zilyo.new(location, ["airbnb","hostelworld"])
      1.upto(20) do |page|
        zilyo.referesh_dataset(page)
        zilyo.listings_data.each {|listing| Lodging.find_or_create_by_zilyo_id(listing)}
      end
    end
  end

  def self.find_or_create_by_zilyo_id(listing)
    Lodging.create(listing) if !(Lodging.find_by(:zilyo_id => listing["zilyo_id"]))
  end

end

# t.string   "name" => ["result"]["attr"]["heading"]
# t.text     "description" => ["result"]["attr"]["description"]
# t.float    "nightly_cost" => ["result"]["price"]["nightly"]
# t.integer  "capacity" => ["result"]["attr"]["occupancy"]
# t.string   "lodging_type" => ["result"]["attr"]["propType"]["text"]
# t.text     "booking_url" => ["result"]["provider"]["url"]
# t.integer  "currency_id" => "USD"
# t.integer  "location_id" => @location.id
# t.string   "zilyo_id" => ["result"]["id"]