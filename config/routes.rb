Rails.application.routes.draw do


  root 'restaurants#index'
  #When adding custom routes (i.e. confirmation page), it's best to do it
  # below the root but above your resources
  get 'reservations/confirmation' => 'reservations#confirmation'

  resources :restaurants
  resources :reservations
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
