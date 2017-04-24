Rails.application.routes.draw do

resources :sessions, only: [:new, :create, :destroy]



resources :restaurants

  resources :users


resources :bookings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
