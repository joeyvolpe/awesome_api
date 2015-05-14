class ItemSerializer < ActiveModel::Serializer
  attributes :item_name, :user




	def user
		object
	end

  
end
