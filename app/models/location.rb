class Location < ActiveRecord::Base
  has_many :currency_locations
  has_many :currencies, :through => :currency_locations

  has_many :language_locations
  has_many :languages, :through => :language_locations

  has_many :attractions
  has_many :lodgings
  has_many :images

end
