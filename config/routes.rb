Rails.application.routes.draw do

  resources :reservations

  resources :cuisines, only: [:new, :create, :destroy]

  resource :session, only: [:new, :create, :destroy]

  resources :restaurants

  resource :users
  root 'restaurants#index'
end
