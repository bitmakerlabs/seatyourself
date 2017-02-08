Rails.application.routes.draw do
  get 'reservations/new'

  get 'reservations/create'

  get 'reservations/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants
  resources :users
  resources :reservations
end
