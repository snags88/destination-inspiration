class Image < ActiveRecord::Base
  belongs_to :location

  def self.seed_images
    Location.all.each do |location|
      Flickr.new(location, 12).gallery.each do |photo|
        Image.create(photo)
      end
    end

  end

end
