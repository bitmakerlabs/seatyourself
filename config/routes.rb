Rails.application.routes.draw do
  resources :restaurants

  resource :users
  root 'users#new'
end
