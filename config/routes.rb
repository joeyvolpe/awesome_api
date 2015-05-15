Rails.application.routes.draw do
 root 'items#index'
 get 'signup/' => 'users#new', as: :new_user

 get 'login' => 'sessions#new'
 post 'login' => 'sessions#create'
 delete 'logout' => 'sessions#destroy'

 get 'index' => 'timelines#index'




 resources :users, except: [:new]
 get 'contact' => 'static_pages#contact'

 
 get 'trades' => 'trades#index'
 get 'trades/:id/accept_trade' => 'trades#accept_trade'
 get 'trades/:id/reject_trade' => 'trades#reject_trade'
 post 'trades/:id/accept_trade' => 'trades#accept_trade', as: :accept_trade 
 post 'trades/:id/reject_trade' => 'trades#reject_trade', as: :reject_trade 	

 get 'users/:id/trades' => 'trades#my_trades', as: :my_trades
 post "users/:id/items/:id/trades/start_trade" => 'trades#start_trade', as: :start_trade
 post "users/:id/items" => "items#create", as: :user_items
 get 'items/:id/edit' => "items#edit", as: :edit_item
 patch 'items/:id/' => 'items#update'
 resources :items, except: [:edit, :update, :patch]
 resources :trades

namespace :api do
	resources :items, only: [:index, :show]
	resources :users, only: [:index, :show]
	resources :trades, only: [:index]
end




 

end
