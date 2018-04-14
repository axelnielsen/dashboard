class Female200mtsHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female200mts_heads.map do |female200mts_head|
      [ 
        
        best_in_place(female200mts_head, :championship_id),
        best_in_place(female200mts_head, :fecha),
        best_in_place(female200mts_head, :hora)
       ]
     end
  end
 
  def count
    Female200mtsHead.count
  end

  def total_entries
    female200mts_heads.total_count
    # will_paginate
    # female200mts_heads.total_entries
  end

  def female200mts_heads
    @female200mts_heads ||= fetch_female200mts_heads
  end

  def fetch_female200mts_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female200mts_heads = Female200mtsHead.page(page).per_page(per_page)
    female200mts_heads = Female200mtsHead.order("#{sort_column} #{sort_direction}")
    female200mts_heads = female200mts_heads.page(page).per(per_page)
    female200mts_heads = female200mts_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end