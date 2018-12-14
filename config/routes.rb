Rails.application.routes.draw do
resource :users
resource :sessions

    resources :restaurants do
        resources :menu_items
        resources :reservations
    end

    resources :users
    resources :sessions

end
