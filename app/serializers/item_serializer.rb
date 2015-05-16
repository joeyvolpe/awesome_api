class ItemSerializer < ActiveModel::Serializer

  attributes :item_name, :item_description, :item_image, :user_fullname, :user_image 



    def user
        user_id = object.user_id
        User.find(user_id)
    end

    def user_fullname
        "#{user.name} #{user.last_name}"
    end

    def user_image
        user.image
    end

    def item_image
        object.item_image.url
    end

  
end

