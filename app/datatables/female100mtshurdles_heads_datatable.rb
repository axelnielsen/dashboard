class Female100mtshurdlesHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female100mtshurdles_heads.map do |female100mtshurdles_head|
      [ 
        
        best_in_place(female100mtshurdles_head, :championship_id),
        best_in_place(female100mtshurdles_head, :fecha),
        best_in_place(female100mtshurdles_head, :hora)
       ]
     end
  end
 
  def count
    Female100mtshurdlesHead.count
  end

  def total_entries
    female100mtshurdles_heads.total_count
    # will_paginate
    # female100mts_heads.total_entries
  end

  def female100mtshurdles_heads
    @female100mtshurdles_heads ||= fetch_female100mtshurdles_heads
  end

  def fetch_female100mtshurdles_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female100mtshurdles_heads = Female100mtshurdlesHead.page(page).per_page(per_page)
    female100mtshurdles_heads = Female100mtshurdlesHead.order("#{sort_column} #{sort_direction}")
    female100mtshurdles_heads = female100mtshurdles_heads.page(page).per(per_page)
    female100mtshurdles_heads = female100mtshurdles_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end