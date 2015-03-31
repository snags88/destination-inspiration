class Image < ActiveRecord::Base
  belongs_to :location

  def self.seed_images
    Location.all.each do |location|
      location_photos = Flickr.new(location, 12).collect_gallery
      location_photos.each do |photo|
        Image.create(photo)
      end
    end

  end

end
