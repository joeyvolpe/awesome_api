Rails.application.routes.draw do
 root 'users#index'
 get 'signup/' => 'users#new', as: :new_user

 get 'login' => 'sessions#new'
 post 'login' => 'sessions#create'
 delete 'logout' => 'sessions#destroy'


 resources :users, except: [:new]
 get 'contact' => 'static_pages#contact'

 # get 'users' => 'users#index', as: :users
 # get 'users/new' => 'users#new', as: :user_path
 # post 'users' => 'users#create'
 # get 'users/:id' => 'users#show'
 # delete 'users/:id' => 'users#destroy'


 get "users/:id/items/:id/transactions" => 'items#transactions', as: :start_transaction
 post "users/:id/items" => "items#create", as: :user_items
 resources :items
 # get 'items' => 'items#index'
 # get 'items/new' => 'items#new', as: :new_item
 # post 'items' => 'items#create', as: :item
 # get 'items/:id/edit' => "items#edit", as: :edit_item
 # patch 'items/:id' => 'items#update'
 # delete 'items/:id' => 'items#destroy'


 

end
