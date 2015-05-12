require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
	before(:each) do
		@user1 = User.create(name: "Austin Kim", email: "austin@example.com", password: "password")
		@user2 = User.create(name: "Joey Volpe", email: "joey@example.com", password: "password")
	end

	describe "GET #index" do
		before :each do
			get :index
		end
		it "should render the correct page" do
			expect(response).to render_template("index")
		end
		it "should have status code of 200" do
			expect(response).to have_http_status(200)
		end
		it "should assign @users to include users" do
			expect(assigns(:users)).to include(@user1, @user2)
		end
	end

	describe "GET #show" do
		before :each do
			get :show, id: @user1.id
		end
		it "should render the correct page" do
			expect(response).to render_template :show
		end
		it "should have status code of 200" do
			expect(response).to have_http_status(200)
		end
	end
end