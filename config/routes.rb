Rails.application.routes.draw do

root to: 'restaurants#index'

resources :sessions, only: [:new, :create, :destroy]

resources :users, only: [:new, :create, :show]

resources :restaurants do
  resources :bookings, only: :create
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
