Rails.application.routes.draw do
 root 'trades#index'
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
 get 'trades' => 'trades#index'
 get 'trades/:id/accept_trade' => 'trades#accept_trade'
 get 'trades/;id/reject_trade' => 'trades#reject_trade'
 post 'trades/:id/accept_trade' => 'trades#accept_trade', as: :accept_trade 
 post 'trades/:id/reject_trade' => 'trades#reject_trade', as: :reject_trade 	

 get 'users/:id/trades' => 'trades#my_trades', as: :my_trades
 post "users/:id/items/:id/trades/start_trade" => 'trades#start_trade', as: :start_trade
 post "users/:id/items" => "items#create", as: :user_items
  resources :items, except: [:edit, :update, :patch]
 resources :trades

 # get 'items' => 'items#index'
 # get 'items/new' => 'items#new', as: :new_item
 # post 'items' => 'items#create', as: :item
 get 'users/:id/items/:id/edit' => "items#edit", as: :edit_item
 patch 'items/:id/' => 'items#update'
 # delete 'items/:id' => 'items#destroy'


 

end
