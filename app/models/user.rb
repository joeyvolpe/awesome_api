class User < ActiveRecord::Base
  has_many :items, :dependent => :destroy
  has_many :trades, :dependent => :destroy

  validates :name, presence: true
  validates :last_name, presence: true
  attr_reader :password

  def password=(unencrypted_password)
  	unless unencrypted_password.empty?
  		@password = unencrypted_password
  		self.password_digest = BCrypt::Password.create(unencrypted_password)
 	  end
  end	

  def authenticate(unencrypted_password)
  	if BCrypt::Password.new(self.password_digest) == unencrypted_password
  		return self
  	else 
  		return false
    end
  end

  mount_uploader :image, ProfilePicUploader

end
