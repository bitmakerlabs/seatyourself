Rails.application.routes.draw do

  resources :restaurants do
    resources :bookings
  end

end
