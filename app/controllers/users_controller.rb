class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path(@user)
		else
			render :new
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		@user = User.update_attributes(user_params)
	end

	def destroy
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password_digest)
	end
end
