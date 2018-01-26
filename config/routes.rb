Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'restaurants#index'
  resources :reservations
  resources :restaurants do
    resources :reservations
end

  get 'sessions/new' => 'sessions#new'
  post 'sessions/create' => 'sessions#create'


  resources :users



end
