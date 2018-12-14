Rails.application.routes.draw do

    resources :restaurants do
        resources :menu_items
        resources :reservations
    end

    resources :users
    resources :sessions

end
