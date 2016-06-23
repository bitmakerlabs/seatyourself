Rails.application.routes.draw do

  root 'restaurants#index'
  resources :restaurants do
    resources :reservations, only: [:create, :new, :show, :edit]
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
