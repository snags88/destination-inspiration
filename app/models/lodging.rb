class Lodging < ActiveRecord::Base
  belongs_to :currency
  belongs_to :location

  def self.seed_data(data_points, occupancy)
    Location.all.each do |location|
      zilyo = Zilyo.new(location, ["airbnb"], data_points, occupancy)
      zilyo.listings_data.each do |listing|
        Lodging.find_or_create_by_zilyo_id(listing)
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