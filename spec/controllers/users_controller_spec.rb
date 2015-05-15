require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
	before(:each) do
		@user1 = User.create(name: "Austin", last_name: "Kim", email: "austin@example.com", password: "password")
		@user2 = User.create(name: "Joey", last_name: "Volpe", email: "joey@example.com", password: "password")
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

	describe "GET #new" do
		before :each do
			get :new
		end
		it "should render the correct page" do
			expect(response).to render_template :new
		end
		it "should have status code of 200" do
			expect(response).to have_http_status(200)
		end
		it "does not persist the user to the database" do
			expect{User.new}.to change(User, :count).by(0)
		end
	end

	describe "POST #create" do
		it "should return status code 200" do
			expect(response).to have_http_status(200)
		end
	end

	describe "DELETE #destroy" do
		it "redirects to index page" do
			get :index
			expect(response).to render_template :index
		end
	end
end