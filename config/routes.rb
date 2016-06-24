Rails.application.routes.draw do
  # Restaurant
  # get 'restaurants/index'

  root 'restaurants#index'

  get 'reservations/confirmation' => 'reservations#confirmation'

  resources :restaurants
  resources :reservations

#   post 'restaurants'=> 'restaurants#create'
#
#   get 'restaurants/:id' => 'restaurants#show', as: 'restaurant'
#
# # Reservation
#   get 'reservations/new' => 'reservations#new'
#   post 'reservations' => 'reservations#create'

  #get 'reservations/create




end
