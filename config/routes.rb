Rails.application.routes.draw do
  # Restaurant
  get 'restaurants/index'

  get 'restaurants/new' => 'restaurants#new'
  post 'restaurants'=> 'restaurants#create'

  get 'restaurants/:id' => 'restaurants#show', as: 'restaurant'

# Reservation
  get 'reservations/new' => 'reservations#new'
  post 'reservations' => 'reservations#create'

  #get 'reservations/create




end
