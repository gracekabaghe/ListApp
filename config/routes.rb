Rails.application.routes.draw do
devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end

  devise_for :users
  resources :friends
  get 'home/index'
  get 'home/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   #root "home#index"
   root "friends#index"
end
