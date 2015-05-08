class User < ActiveRecord::Base
  has_many :items, :dependent => :destroy
  has_many :trades, :dependent => :destroy
  has_secure_password
  attr_reader :password

  mount_uploader :image, ProfilePicUploader
  
end
