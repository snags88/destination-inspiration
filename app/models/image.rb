class Image < ActiveRecord::Base
  belongs_to :location

  def self.add_images
    Location.all.each do |location|
      Flickr.new(location, 10)
    end

  end

end
