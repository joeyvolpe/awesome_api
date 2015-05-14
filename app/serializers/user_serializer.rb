class UserSerializer < ActiveModel::Serializer
  attributes :name, :last_name, :email, :items

  has_many :items

end
