class UsersController < ApplicationController
  before_action :require_login?, except: [:index, :new, :create]
  before_action :authorized?, only: [:edit, :update]
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @item = Item.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
       # Will auto log user in when they sign up for a new account
      session[:user_id] = @user.id.to_s
       # End auto log in
      flash[:welcome] = "Thanks for signing up, #{@user.name}!"
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
		if @user.update_attributes(user_params)
			redirect_to users_path
		else
			render :edit
		end
  end

  def destroy
  	@user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully deleted.' }
      format.json { head :no_content }
      session[:user_id] = nil
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def require_login?
    unless logged_in?
      flash[:error] = "You must be logged in to access that page."
    end
  end

  def authorized?
    unless current_user == User.find(params[:id])
      flash[:error] = "You are not authorized to access that page."
      redirect_to users_path
    end
  end
end
