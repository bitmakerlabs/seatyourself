Rails.application.routes.draw do

  root 'restaurants#index'

  resources :users do
    resources :restaurants
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :restaurants do
    resources :bookings
  end

end
