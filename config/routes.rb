Rails.application.routes.draw do
 root 'users#index'
 get 'contact' => 'static_pages#contact'

 get 'users' => 'users#index', as: :users
 get 'users/new' => 'users#new', as: :new_user
 post 'users' => 'users#create'
 get 'users/:id' => 'users#show', as: :user

 delete 'users/:id' => 'users#destroy'

 
end
