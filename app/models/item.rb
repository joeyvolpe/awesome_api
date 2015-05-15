class Item < ActiveRecord::Base
  belongs_to :user
  has_many :trades, :dependent => :destroy
  accepts_nested_attributes_for :trades
  mount_uploader :item_image, ItemUploader
  validates :item_name, presence: true
  validates :item_description, presence: true

end
