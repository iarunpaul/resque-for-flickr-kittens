class AddFlickrUrlToKittens < ActiveRecord::Migration[6.1]
  def change
    add_column :kittens, :flickr_url, :string
  end
end
