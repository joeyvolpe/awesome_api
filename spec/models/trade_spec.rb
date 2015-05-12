require 'rails_helper'

RSpec.describe Trade do
	it "is invalid without an item to trade for" do
		trade = Trade.new(item_a_id: nil)
		expect(trade).to be_invalid
	end
end