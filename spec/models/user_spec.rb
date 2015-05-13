require 'rails_helper'

RSpec.describe User do
	it "is invalid without a name" do
		user = User.new(name: nil, last_name: "Smith", email: "roy@example.com")
		expect(user).to be_invalid
	end

	it "is invalid without a last_name" do
		user = User.new(name: "Roy", last_name: nil)
		expect(user).to be_invalid
	end

	it "has a full_name" do
		user = User.new(name: "James", last_name: "Bond")
		expect(user.full_name).to eq("James Bond")
	end

	it "is invalid without an email address" do
		user = User.new(name: "Roy", email: nil)
		expect(user).to be_invalid
	end

	it "is invalid if email isn't formatted" do
		user = User.new(name: "Roy", email: "asdlfkjas;@")
		expect(user).to be_invalid
	end 

	it "is invalid if a user tries to sign up with an email that already exists in the db, regardless of capitalization" do
		user1 = User.create(name: "James", last_name: "Bond",email: "james@example.com", password: "password")
		user2 = User.new(name: "James", email: "JAMES@example.com")
		user3 = User.new(name: "James", email: "james@example.com")
		expect(user1).to be_valid
		expect(user2).to be_invalid
		expect(user3).to be_invalid
	end

	
end