Rails.application.routes.draw do
  # get 'sessions/new'
  #
  # get 'sessions/create'
  #
  # get 'sessions/destroy'

  get 'reservations/new'

  get 'reservations/create'

  get 'reservations/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :restaurants
  resources :users, only: %i(new create) # makes everything into a :symbol
  resources :sessions, only: %i(new create destroy)
end
