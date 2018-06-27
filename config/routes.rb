Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index"

  resources :restaurants do
      resources :reservations
      
  end

  resource :users

  resource :session, only: %i(new create destroy)


end
