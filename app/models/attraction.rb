class Attraction < ActiveRecord::Base
  belongs_to :location
  belongs_to :currency
end
