class UserSerializer < ActiveModel::Serializer
  attributes :image, :name, :last_name, :items

  has_many :items
  has_many :trades
end
