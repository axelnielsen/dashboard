Rails.application.routes.draw do

  
  resources :start_female_javelins
  resources :start_male_javelins
  resources :start_male_throwing_discs
  resources :start_male_shot_puts
  resources :start_female_shot_puts
  resources :start_female_jumps
  resources :start_female1500mts
  resources :start_male1500mts
  resources :start_male100mthudrles
  resources :start_female100mthudrles
  resources :start_female400mts
  resources :start_male400mts
  resources :start_male200mts
  resources :start_female200mts
  resources :start_male100mts
  resources :start_female100mts
  resources :male_javelin_heads
  resources :female_javelin_heads
  resources :female_shot_put_heads
  resources :male_shot_put_heads
  resources :shot_put_heads
  resources :malethrowing_disc_heads
  resources :femalethrowing_disc_heads
  resources :malejump_heads
  resources :femalejump_heads
  resources :female1500mts_heads
  resources :male1500mts_heads
  resources :female100mtshurdles_heads
  resources :male100mtshurdles_heads
  resources :male400mts_heads
  resources :female400mts_heads
  resources :female200mts_heads
  resources :male200mts_heads
  resources :male100mts_heads
  resources :female100mts_heads
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
