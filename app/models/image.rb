class Image < ActiveRecord::Base
  belongs_to :location

  validates_uniqueness_of :url

  def self.seed_images
    Location.all.each do |location|
      Flickr.new(location, 12).gallery.each do |photo|
        Image.create(photo)
      end
    end

  end

end
