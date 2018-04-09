Rails.application.routes.draw do
  resources :serie_detalles
  resources :discipline_championship2s
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
  resources :athleteseries
  resources :athletes
  resources :clients
    resources :detalles do
    collection { post :import}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  resources :championships do
  resources :series
end
  resources :athletes do
  collection { post :import}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
