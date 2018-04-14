class FemaleJavelinHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female_javelin_heads.map do |female_javelin_head|
      [ 
        
        best_in_place(female_javelin_head, :championship_id),
        best_in_place(female_javelin_head, :fecha),
        best_in_place(female_javelin_head, :hora)
       ]
     end
  end
 
  def count
    FemaleJavelinHead.count
  end

  def total_entries
    female_javelin_heads.total_count
    # will_paginate
    # female_javelin_heads.total_entries
  end

  def female_javelin_heads
    @female_javelin_heads ||= fetch_female_javelin_heads
  end

  def fetch_female_javelin_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female_javelin_heads = Female_javelinHead.page(page).per_page(per_page)
    female_javelin_heads = FemaleJavelinHead.order("#{sort_column} #{sort_direction}")
    female_javelin_heads = female_javelin_heads.page(page).per(per_page)
    female_javelin_heads = female_javelin_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end