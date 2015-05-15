class Trade < ActiveRecord::Base
	belongs_to :user
	belongs_to :item
	validates :item_a_id,  presence: true

	def requester
		User.find(self.user_a_id)
	end 

	def offered_item
		Item.find(self.item_a_id)
	end

	def requested_item
		Item.find(self.item_id)
	end

	def requestee
		User.find(self.user_id)
	end
  
  	

 
end
