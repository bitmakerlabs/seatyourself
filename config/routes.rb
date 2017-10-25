Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  resources :restaurants do
    resources :reservations
  end
  resources :reservations, only: :index

  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]

end
