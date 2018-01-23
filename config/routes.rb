Rails.application.routes.draw do

  root 'restaurants#index'

  resources :users

  resources :restaurants do
    resources :bookings
  end

end
