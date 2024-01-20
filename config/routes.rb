Rails.application.routes.draw do
  resources :talks
  devise_for :users
  resources :tribes

  resources :mies
  # get 'home/index'
  get 'home/about'
  root "home#index" # root route
  get "up" => "rails/health#show", as: :rails_health_check
end