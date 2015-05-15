class ItemSerializer < ActiveModel::Serializer
  attributes :item_name, :item_description, :item_image, :user, 




	def user
		user_id = object.user_id
		User.find(user_id)
	end

  
end
