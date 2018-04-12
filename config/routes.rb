Rails.application.routes.draw do

  
  resources :jump_females
  resources :throwings do
  collection { post :import}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :jumps do
  collection { post :import}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
  resources :jump_females do
  collection { post :import}

  end



  resources :sports
  get 'results/index'

  devise_for :users
  resources :serie_detalles
  resources :discipline_championship2s
  resources :countries
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
root to: 'results#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
