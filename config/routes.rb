Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants
  resources :users
  resources :reservations
  resource :session, only: [:new, :create, :destroy]
  root 'restaurants#index'
end
