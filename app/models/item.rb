class Item < ActiveRecord::Base
  belongs_to :users
  has_many :trades, :dependent => :destroy
  accepts_nested_attributes_for :trades
end
