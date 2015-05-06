class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:login][:email])
		if user && user.authenticate(params[:login][:password])
			#sets a cookie so our browser knows who we say we are
			session[:user_id] = user.id.to_s
			redirect_to root_path
			#session = {:user_id => "4"}

			# session = Hash.new
			# {}

			# session[:user_id] = "joey"
			# {:user_id => "joey"}
		else
		flash.now[:error] = "Your email address or password are incorrect." 
			redirect_to login_path
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end
end

