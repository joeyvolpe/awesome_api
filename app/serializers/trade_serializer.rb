class TradeSerializer < ActiveModel::Serializer
  attributes :id, :item, :item_a, :user, :user_a

  def user
  	user_id = object.user_id
  	User.find(user_id)
  end

  def user_a
  	user_a_id = object.user_a_id
  	User.find(user_a_id)
  end

  def item
  	item_id = object.item_id
  	Item.find(item_id)
  end

  def item_a
  	item_a_id = object.item_a_id
  	Item.find(item_a_id)
  end
end
