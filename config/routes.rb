Rails.application.routes.draw do
  get 'search/index'
  resources :talks
  devise_for :users
  resources :tribes
  resources :conversations
  # get 'home/index'
  get 'home/about'
  root "home#index" # root route
  get "up" => "rails/health#show", as: :rails_health_check
  get '/search', to: 'search#index', as: 'search'
end