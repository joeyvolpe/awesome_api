Rails.application.routes.draw do
 root 'static_pages#home'
 get 'contact' => 'static_pages#contact'

 get 'users' => 'users#index', as: :users
 get 'users/new' => 'users#new', as: :new_user
 post 'users' => 'users#create'
 get 'users/:id' => 'users#show', as: :user

 
end
