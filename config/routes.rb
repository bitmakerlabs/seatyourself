Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants do
    resources :reservations
  end

  resources :users

  resources :sessions

  root 'restaurants#index'
end
