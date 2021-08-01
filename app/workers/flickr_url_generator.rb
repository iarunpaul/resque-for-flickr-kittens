class FlickrUrlGenerator
  @queue = :flickr_queue

  def self.perform(kitten_id)
    kitten = Kitten.find(kitten_id)
    flickr = Flickr.new "a07d1ab83eabfd7d03153e003f306699", "9471961d09cdea4f"
    list = flickr.photos.getRecent
    photo = list[(1 + rand(10))]
    kitten.update(flickr_url: "http://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg")
  end

end