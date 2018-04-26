Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "restaurants#index"

resource :user, only: %i[new show create]
resources :reservations, only: %i[create index destroy]
resources :restaurants, only: %i[index show new create]
resource :session, only: %i[create new destroy]




# restaurants/index
# sessions/new
# user/new
# user/show
# reservation/index
# restaurants/show

end
