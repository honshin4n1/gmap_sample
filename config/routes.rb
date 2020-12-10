Rails.application.routes.draw do
  root to: 'maps#index'
  resources :maps, only: [:index, :create, :show]
  # get '/map_request', to: 'maps#map', as: 'map_request'
end
