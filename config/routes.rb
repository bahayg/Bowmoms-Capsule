Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :posts
  resources :topics
  resources :diseases
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
