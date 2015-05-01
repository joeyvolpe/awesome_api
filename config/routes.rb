Rails.application.routes.draw do
 root 'users#index'



resources :users
 get 'contact' => 'static_pages#contact'

 # get 'users' => 'users#index', as: :users
 # get 'users/new' => 'users#new', as: :user_path
 # post 'users' => 'users#create'
 # get 'users/:id' => 'users#show'
 # delete 'users/:id' => 'users#destroy'



 post "users/:id/items" => "items#create", as: :user_items

 resources :items
 # get 'items' => 'items#index'
 # get 'items/new' => 'items#new', as: :new_item
 # post 'items' => 'items#create', as: :item
 # get 'items/:id/edit' => "items#edit", as: :edit_item
 # patch 'items/:id' => 'items#update'
 # delete 'items/:id' => 'items#destroy'


 

end
