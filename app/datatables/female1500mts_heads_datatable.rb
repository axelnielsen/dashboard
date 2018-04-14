class Female1500mtsHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female1500mts_heads.map do |female1500mts_head|
      [ 
        
        best_in_place(female1500mts_head, :championship_id),
        best_in_place(female1500mts_head, :fecha),
        best_in_place(female1500mts_head, :hora)
       ]
     end
  end
 
  def count
    Female1500mtsHead.count
  end

  def total_entries
    female1500mts_heads.total_count
    # will_paginate
    # female1500mts_heads.total_entries
  end

  def female1500mts_heads
    @female1500mts_heads ||= fetch_female1500mts_heads
  end

  def fetch_female1500mts_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female1500mts_heads = Female1500mtsHead.page(page).per_page(per_page)
    female1500mts_heads = Female1500mtsHead.order("#{sort_column} #{sort_direction}")
    female1500mts_heads = female1500mts_heads.page(page).per(per_page)
    female1500mts_heads = female1500mts_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end