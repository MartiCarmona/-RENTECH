Rails.application.routes.draw do
  devise_for :users

  # Define root path (you can change the controller#action as needed)
  root to: 'products#index'

  resources :products do
    resources :bookings, only: [:create, :new, :show]
    resources :rentals, only: [:create]

  end

  # Separate resources for bookings to handle other actions
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
