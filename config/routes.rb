Rails.application.routes.draw do
  resources :countries
  resources :users
  resources :series
  resources :regions
  resources :referees
  resources :referee_levels
  resources :products
  resources :disciplines
  resources :discipline_details
  resources :discipline_championships
  resources :coaches
  resources :championships
  resources :athleteseries
  resources :athletes
  resources :clients
  resources :athletes do
  collection { post :import}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
