Rails.application.routes.draw do
  # Restaurant
  # get 'restaurants/index'

  root 'restaurants#index'
  resources :restaurants
  resources :reservations

#   get 'restaurants/new' => 'restaurants#new'
#   post 'restaurants'=> 'restaurants#create'
#
#   get 'restaurants/:id' => 'restaurants#show', as: 'restaurant'
#
# # Reservation
#   get 'reservations/new' => 'reservations#new'
#   post 'reservations' => 'reservations#create'

  #get 'reservations/create




end
