Rails.application.routes.draw do
  # Devise routes for User authentication
  devise_for :users

  # Define root path (you can change the controller#action as needed)
  root to: 'pages#home'

  # Resources for products
  resources :products do
    resources :bookings, only: [:create, :new, :show] # Nested bookings within products for creating them
  end

  get '/consoles', to: 'consoles#index'
  get '/audios', to: 'audios#index'
  get '/cameras', to: 'cameras#index'
  get '/outdoors', to: 'outdoors#index'
  get '/gadgets', to: 'gadgets#index'

  # Separate resources for bookings to handle other actions
  resources :bookings, only: [] do
    member do
      patch 'accept'    # To accept a booking
      patch 'decline'   # To decline a booking
    end
    resources :reviews, only: [:create, :new] # Nested reviews within bookings
  end

  # Routes for user profiles
  resources :users, only: [:show] do
    resources :products, only: [:index] # Nested products within users to show user's products
    resources :bookings, only: [:index] # Nested bookings within users to show user's bookings
    resources :reviews, only: [:index]  # Nested reviews within users to show user's reviews
  end

  # Other custom routes as required by your application
  # Example: get 'search', to: 'products#search' # If you have a search action in products controller

  # You can add more custom routes as required for your application
end
