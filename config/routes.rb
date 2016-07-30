Rails.application.routes.draw do

  root 'store#index', as: 'store'

  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:new, :create]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show]
  resources :sessions, only: [:new, :create, :index]
  
  
  get '/auth/facebook/callback' => 'sessions#create'
  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'

end
