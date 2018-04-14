Rails.application.routes.draw do

  
  resources :male_long_jumps
  resources :male_high_jumps
  resources :male_triple_jumps
  resources :female_discus_throws
  resources :male_hammer_throws
  resources :male_pole_jumps
  resources :male5000mts
  resources :male400mthudrles
  resources :male100mthudrles
  resources :male200mts
  resources :male1500mts
  resources :male100mts
  resources :male400mts
  resources :female100mthudrles
  resources :female200mts
  resources :female1500mts
  resources :female100mts
  resources :female400mts
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

  resources :start_female_javelins do
  collection { post :import}
  end

  resources :start_male_javelins do
  collection { post :import}
  end
   resources :start_male_throwing_discs do
  collection { post :import}
  end
   resources :start_male_shot_puts do
  collection { post :import}
  end
   resources :start_female_jumps do
  collection { post :import}
  end
   resources :start_female1500mts do
  collection { post :import}
  end
   resources :start_male1500mts do
  collection { post :import}
  end
   resources :start_male100mthudrles do
  collection { post :import}
  end
   resources :start_female100mthudrles do
  collection { post :import}
  end
   resources :start_female400mts do
  collection { post :import}
  end
   resources :start_male400mts do
  collection { post :import}
  end
   resources :start_male200mts do
  collection { post :import}
  end
   resources :start_female200mts do
  collection { post :import}
  end
   resources :start_male100mts do
  collection { post :import}
  end
   resources :start_female100mts do
  collection { post :import}
  end
   resources :male_javelin_heads do
  collection { post :import}
  end
   resources :female_javelin_heads do
  collection { post :import}
  end
   resources :female_shot_put_heads do
  collection { post :import}
  end
   resources :male_shot_put_heads do
  collection { post :import}
  end
   resources :shot_put_heads do
  collection { post :import}
  end
   resources :malethrowing_disc_heads do
  collection { post :import}
  end
   resources :femalethrowing_disc_heads do
  collection { post :import}
  end
   resources :malejump_heads do
  collection { post :import}
  end
   resources :femalejump_heads do
  collection { post :import}
  end
   resources :female1500mts_heads do
  collection { post :import}
  end
   resources :male1500mts_heads do
  collection { post :import}
  end
   resources :female100mtshurdles_heads do
  collection { post :import}
  end
   resources :male100mtshurdles_heads do
  collection { post :import}
  end
  resources :male400mts_heads do
  collection { post :import}
  end
  resources :female400mts_heads do
  collection { post :import}
  end
  resources :female200mts_heads do
  collection { post :import}
  end
  resources :male200mts_heads do
  collection { post :import}
  end
  resources :male100mts_heads do
  collection { post :import}
  end

  resources :female100mts_heads do
  collection { post :import}
  end

   resources :male100mthudrles do
  collection { post :import}
  end

   resources :male200mts do
  collection { post :import}
  end

   resources :male1500mts do
  collection { post :import}
  end
   resources :male100mts do
  collection { post :import}
  end
   resources :male400mts do
  collection { post :import}
  end
  
   resources :female200mts do
  collection { post :import}
  end
   resources :female1500mts do
  collection { post :import}
  end
   resources :female100mts do
  collection { post :import}
  end
   resources :female400mts do
  collection { post :import}
  end
   resources :female100mthudrles do
  collection { post :import}
  end
 resources :male5000mts do
  collection { post :import}
  end
   resources :male400mthudrles do
  collection { post :import}
  end

 resources :male_pole_jumps do
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
