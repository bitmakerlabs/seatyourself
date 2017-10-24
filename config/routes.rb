Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
  resource :session, only: [:new, :create, :destroy]
  resource :users
  resources :restaurants do
    resources :reservations, except: [:index]
  end
end
