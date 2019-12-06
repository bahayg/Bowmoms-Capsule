Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :comments
  resources :posts
  resources :topics, only: [:index]
  resources :diseases, only: [:index, :show]
  root to: "diseases#index"

  # get '/posts/:id/comment', to:"comments#get_post_params"


  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get '/login', to: "auth#signin"
  post '/login', to: "auth#verify"

  get '/logout', to: "auth#logout"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
