class Attraction < ActiveRecord::Base
  belongs_to :location
  belongs_to :currency

  validates :name, :description, :attraction_type, presence: true

end
