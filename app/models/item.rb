class Item < ActiveRecord::Base
  belongs_to :users
  mount_uploader :item_image, ItemUploader
end
