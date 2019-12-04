Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :comments
  resources :posts
  resources :topics, only: [:index, :show]
  resources :diseases, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
