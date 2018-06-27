Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resources :users, only: [:new,:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :restaurants do
    resources :reservations
  end
end
