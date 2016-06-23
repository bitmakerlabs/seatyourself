Rails.application.routes.draw do

  get 'restaurants/index'

  get 'restaurants/new' => 'restaurant#new'
  post 'restaurants'=> 'restaurants#create'

  get 'restaurants/:id' => 'restaurants#show', as: 'restaurant'
end
