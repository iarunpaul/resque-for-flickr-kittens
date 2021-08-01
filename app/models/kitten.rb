class Kitten < ApplicationRecord
  enum softness: [:soft, :softer, :softest]
  # before_create :add_flickr_url

  def add_flickr_url
    flickr = Flickr.new "a07d1ab83eabfd7d03153e003f306699", "9471961d09cdea4f"
    list = flickr.photos.getRecent
    photo = list[(1 + rand(10))]
    self.flickr_url = "http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg"
  end
end
