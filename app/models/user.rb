class User < ActiveRecord::Base
  has_many :items, :dependent => :destroy
  has_many :trades, :dependent => :destroy

  validates :name, presence: true
  validates :last_name, presence: true
  attr_reader :password
  before_save :format_user_input
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  has_secure_password
  # def password=(unencrypted_password)
  # 	unless unencrypted_password.empty?
  # 		@password = unencrypted_password
  # 		self.password_digest = BCrypt::Password.create(unencrypted_password)
 	#   end
  # end	

  # def authenticate(unencrypted_password)
  # 	if BCrypt::Password.new(self.password_digest) == unencrypted_password
  # 		return self
  # 	else 
  # 		return false
  #   end
  # end

  mount_uploader :image, ProfilePicUploader

 private
 def format_user_input
  self.name = self.name.titleize
  self.email = self.email.downcase
 end
end
