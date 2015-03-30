class Language < ActiveRecord::Base
  has_many :language_locations
  has_many :locations, :through => :language_locations

end
