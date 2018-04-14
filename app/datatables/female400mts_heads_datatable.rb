class Female400mtsHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female400mts_heads.map do |female400mts_head|
      [ 
        
        best_in_place(female400mts_head, :championship_id),
        best_in_place(female400mts_head, :fecha),
        best_in_place(female400mts_head, :hora)
       ]
     end
  end
 
  def count
    Female400mtsHead.count
  end

  def total_entries
    female400mts_heads.total_count
    # will_paginate
    # female400mts_heads.total_entries
  end

  def female400mts_heads
    @female400mts_heads ||= fetch_female400mts_heads
  end

  def fetch_female400mts_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female400mts_heads = Female400mtsHead.page(page).per_page(per_page)
    female400mts_heads = Female400mtsHead.order("#{sort_column} #{sort_direction}")
    female400mts_heads = female400mts_heads.page(page).per(per_page)
    female400mts_heads = female400mts_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end