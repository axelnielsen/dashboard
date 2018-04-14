class Female100mtsHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female100mts_heads.map do |female100mts_head|
      [ 
        
        best_in_place(female100mts_head, :championship_id),
        best_in_place(female100mts_head, :fecha),
        best_in_place(female100mts_head, :hora)
       ]
     end
  end
 
  def count
    Female100mtsHead.count
  end

  def total_entries
    female100mts_heads.total_count
    # will_paginate
    # female100mts_heads.total_entries
  end

  def female100mts_heads
    @female100mts_heads ||= fetch_female100mts_heads
  end

  def fetch_female100mts_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female100mts_heads = Female100mtsHead.page(page).per_page(per_page)
    female100mts_heads = Female100mtsHead.order("#{sort_column} #{sort_direction}")
    female100mts_heads = female100mts_heads.page(page).per(per_page)
    female100mts_heads = female100mts_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end