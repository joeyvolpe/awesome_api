class User < ActiveRecord::Base
  has_many :items
  attr_reader :password
  before_save :format_user_input

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

 private
 def format_user_input
  self.name = self.name.titleize
  self.email = self.email.downcase
 end
end
