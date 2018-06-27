Rails.application.routes.draw do
  get 'reservations/new_restaurant_reservation'
  get 'reservations/edit_restaurant_reservation'
  get 'reservations/restaurant_reservation'
  get 'reservations/restaurant_reservations'
  get 'new_restaurant_reservation/edit_restaurant_reservation'
  get 'new_restaurant_reservation/restaurant_reservation'
  get 'new_restaurant_reservation/restaurant_reservations'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :users, only: [:new,:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :restaurants do
    resources :reservations
  end
end
