Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]

  resources :restaurants

  resource :users
  root 'restaurants#index'
end
