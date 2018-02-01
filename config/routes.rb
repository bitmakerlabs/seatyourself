Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :users, except: :index 
  resources :restaurants do
    resources :reservations
  end

  resource :sessions, only: [:new, :create, :destroy]
  root to: 'restaurants#index'

end
