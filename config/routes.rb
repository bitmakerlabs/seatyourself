Rails.application.routes.draw do

  root 'restaurants#index'
  get '/search' => 'restaurants#search'



  resources :restaurants do
  resources :reservations

end

  resource :users, only: %i(new create)
  resource :sessions, only: %i(new create destroy)


end
