class Currency < ActiveRecord::Base
  has_many :currency_locations
  has_many :locations, :through => :currency_locations

  has_many :lodgings
  has_many :attractions

end
