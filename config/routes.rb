Rails.application.routes.draw do
 root 'users#index'



 resources :users
 get 'contact' => 'static_pages#contact'

 # get 'users' => 'users#index', as: :users
 # get 'users/new' => 'users#new', as: :user_path
 # post 'users' => 'users#create'
 # get 'users/:id' => 'users#show'
 # delete 'users/:id' => 'users#destroy'


 
end
