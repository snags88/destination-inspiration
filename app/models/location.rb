class Location < ActiveRecord::Base
  has_many :currency_locations
  has_many :currencies, :through => :currency_locations

  has_many :language_locations
  has_many :languages, :through => :language_locations

  has_many :attractions
  has_many :lodgings
  has_many :images

  validates :city, :country, :longitude, :latitude, :presence => true
  validates :city, uniqueness: true

  def hero_image_url
    self.images.where(:image_type => "hero").first.url
  end

  def gallery_images
    self.images.where(image_type: 'gallery')
  end

end
