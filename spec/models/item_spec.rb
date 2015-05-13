require 'rails_helper'

RSpec.describe Item do
	it "is invalid without a item name" do
		item = Item.new(item_name: nil)
		expect(item).to be_invalid
	end

	it "is invalid without item description" do
		item = Item.new(item_name: "Bike", item_description: nil)
		expect(item).to be_invalid
	end

end