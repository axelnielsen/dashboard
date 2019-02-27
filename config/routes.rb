Rails.application.routes.draw do

  
   resources :athletes do
    collection do
      get :autocomplete
    end
  end
  resources :profiles
  resources :clubs
  resources :registration_detail2s
  resources :registration_head2s
  resources :registration_statuses
  resources :competition_types
resources :hjump2s do
  collection { post :import}
  end


resources :hjump_head2s do
    resources :hjump2s 
  end

 devise_for :users
 
resources :throw2s do
  collection { post :import}
  end



resources :throw_head2s do
    resources :throw2s 
  end


 resources :jump2s do
  collection { post :import}
  end

   resources :jump_head2s do
    resources :jump2s 
  end
  resources :start2s
 
  resources :start_heads do
    resources :start2s 
  end
  resources :starts
  resources :track2s do
  collection { post :import}
  end


  resources :track_head2s do
    resources :track2s 
  end


  resources :sexes
  resources :genders
  resources :competitions
  resources :categories
  resources :stages do
    resources :competitions
  end
  resources :track_heads
  resources :tracks
  resources :serie_types
  resources :male_discus_throws
  resources :female4x400mts
  resources :female3000mts
  resources :female800mts
  resources :female10000mts
  resources :female3000mtsobstacles
  resources :female110mtshudrles
  resources :female20000mts
  resources :male4x400mts
  resources :male3000mts
  resources :male800mts
  resources :male10000mts
  resources :male3000mtsobstacles
  resources :male110mtshudrles
  resources :male20000mts
  resources :start_female4x400mts
  resources :start_female3000mts
  resources :start_female800mts
  resources :start_female3000mtsobstacles
  resources :start_female20000mts
  resources :start_male4x400mts
  resources :start_male3000mts
  resources :start_male800mts
  resources :start_male_discus_throws
  resources :start_male10000mts
  resources :start_male3000mtsobstacles
  resources :start_male110mtshudrles
  resources :start_male20000mts
  resources :start_female_discus_throws
  resources :start_female_senior200mts
  resources :start_female_triple_jumps
  resources :start_female_pole_jumps
  resources :start_female_long_jumps
  resources :start_female_high_jumps
  resources :start_female_hammer_throws
  resources :start_female8x50mts
  resources :start_female5000mts
  resources :start_female4x100mts
  resources :start_female400mtshudrles
  resources :start_male_senior200mts
  resources :start_male_triple_jumps
  resources :start_male_pole_jumps
  resources :start_male_long_jumps
  resources :start_male_high_jumps
  resources :start_male_hammer_throws
  resources :start_male8x50mts
  resources :start_male5000mts
  resources :start_male4x100mts
  resources :start_male400mtshudrles
  resources :male4x100mts
  resources :female4x100mts
  resources :malesenior200mts
  resources :femalesenior200mts
  resources :male8x50mts
  resources :female8x50mts
  
  resources :male_javelines
  resources :female_javelines
  resources :male_shot_puts
  resources :female_shot_puts
  resources :female_high_jumps
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
  resources :start_female400mts
  resources :start_male400mts
  resources :start_male200mts
  resources :start_female200mts
  resources :start_male100mts
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



 resources :male_long_jumps do
  collection { post :import}
  end
 resources :male_high_jumps do
  collection { post :import}
  end
 resources :male_triple_jumps do
  collection { post :import}
  end
 resources :female_discus_throws do
  collection { post :import}
  end
 resources :male_hammer_throws do
  collection { post :import}
  end

  resources :male_javelines do
  collection { post :import}
  end

  resources :female_javelines do
  collection { post :import}
  end

  resources :male_shot_puts do
  collection { post :import}
  end

  resources :female_shot_puts do
  collection { post :import}
  end

  resources :female_high_jumps do
  collection { post :import}
  end
 
 
  resources :female8x50mts do
  collection { post :import}
  end

  resources :male4x100mts do
  collection { post :import}
  end
  resources :female4x100mts do
  collection { post :import}
  end
  resources :malesenior200mts do
  collection { post :import}
  end
  resources :femalesenior200mts do
  collection { post :import}
  end
  resources :male8x50mts do
  collection { post :import}
  end
  resources :female8x50mts do
  collection { post :import}
  end
 
  

  resources :female4x400mts do
  collection { post :import}
  end
  resources :female3000mts do
  collection { post :import}
  end
  resources :female800mts do
  collection { post :import}
  end
  resources :female10000mts do
  collection { post :import}
  end
  resources :female3000mtsobstacles do
  collection { post :import}
  end
  resources :female110mtshudrles do
  collection { post :import}
  end
  resources :female20000mts do
  collection { post :import}
  end
  resources :male4x400mts do
  collection { post :import}
  end
  resources :male3000mts do
  collection { post :import}
  end
  resources :male800mts do
  collection { post :import}
  end
  resources :male10000mts do
  collection { post :import}
  end
  resources :male3000mtsobstacles do
  collection { post :import}
  end
  resources :male110mtshudrles do
  collection { post :import}
  end
  resources :male20000mts do
  collection { post :import}
  end
  resources :start_female4x400mts do
  collection { post :import}
  end
  resources :start_female3000mts do
  collection { post :import}
  end
  resources :start_female800mts do
  collection { post :import}
  end
  resources :start_female10000mts do
  collection { post :import}
  end
  resources :start_female3000mtsobstacles do
  collection { post :import}
  end
  resources :start_female110mtshudrles do
  collection { post :import}
  end
  resources :start_female20000mts do
  collection { post :import}
  end  
  resources :start_male4x400mts do
  collection { post :import}
  end
  resources :start_male3000mts do
  collection { post :import}
  end
  resources :start_male800mts do
  collection { post :import}
  end
  resources :start_male_discus_throws do
  collection { post :import}
  end
  resources :start_male10000mts do
  collection { post :import}
  end
  resources :start_male3000mtsobstacles do
  collection { post :import}
  end
  resources :start_male110mtshudrles do
  collection { post :import}
  end
  resources :start_male20000mts do
  collection { post :import}
  end


resources :male_discus_throws do
  collection { post :import}
  end


  resources :sports
  post 'results/index'
  post 'registration_head2s/result'
  post 'track_head2s/result'
  post 'track_head2s/generar'
 
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
root :to => "championships#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

