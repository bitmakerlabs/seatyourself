Rails.application.routes.draw do
  resources :restaurants

  resource :users
  root 'restaurants#index'
end
