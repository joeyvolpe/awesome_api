class ItemSerializer < ActiveModel::Serializer
  attributes :item_name, :user




	def user
		user_id = object.user_id
		User.find(user_id).name
	end

  
end
