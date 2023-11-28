Rails.application.routes.draw do
  get 'favorites/index'
  devise_for :users

  root to: 'products#index'

  resources :products do
    resources :bookings, only: [:create, :new, :show]
    resources :rentals, only: [:create]
    member do
      get 'toggle_favorite'
    end
    get 'favorites/index', to: 'favorites#index'

  end

  resources :bookings, only: [] do
    member do
      patch 'accept'
      patch 'decline'
    end
    resources :reviews, only: [:create, :new]
  end

  resources :users, only: [:show] do
    resources :products, only: [:index]
    resources :bookings, only: [:index]
    resources :reviews, only: [:index]

  end
end
