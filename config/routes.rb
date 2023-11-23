Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :products do
    resources :bookings, only: [:create, :new, :show]
    resources :rentals, only: [:create]
  end

  get '/consoles', to: 'consoles#index'
  get '/audios', to: 'audios#index'
  get '/cameras', to: 'cameras#index'
  get '/outdoors', to: 'outdoors#index'
  get '/gadgets', to: 'gadgets#index'

  resources :bookings, only: [] do
    member do
      patch 'accept'
      patch 'decline'
    end
    resources :reviews, only: [:create, :new]
  end

  # Routes for user profiles
  resources :users, only: [:show] do
    resources :products, only: [:index]
    resources :bookings, only: [:index]
    resources :reviews, only: [:index]

  end
end
