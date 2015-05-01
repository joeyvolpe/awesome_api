Rails.application.routes.draw do
 root 'static_pages#home'
 get 'contact' => 'static_pages#contact'

 get 'users' => 'users#index', as: :users
 get 'users/new' => 'users#new', as: :new_user
 post 'users' => 'users#create'
 get 'users/:id' => 'users#show', as: :user


 post "users/:id/items" => "items#create", as: :user_items


 get 'items' => 'items#index'
 get 'items/new' => 'items#new', as: :new_item
 post 'items' => 'items#create', as: :item
 get 'items/:id/edit' => "items#edit", as: :edit_item
 patch 'items/:id' => 'items#update'
 delete 'items/:id' => 'items#destroy'


 

end
