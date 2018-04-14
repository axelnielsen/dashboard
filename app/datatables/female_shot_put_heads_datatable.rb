class FemaleShotPutHeadsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female_shot_put_heads.map do |female_shot_put_head|
      [ 
        
        best_in_place(female_shot_put_head, :championship_id),
        best_in_place(female_shot_put_head, :fecha),
        best_in_place(female_shot_put_head, :hora)
       ]
     end
  end
 
  def count
    FemaleShotPutHead.count
  end

  def total_entries
    female_shot_put_heads.total_count
    # will_paginate
    # female_shot_put_heads.total_entries
  end

  def female_shot_put_heads
    @female_shot_put_heads ||= fetch_female_shot_put_heads
  end

  def fetch_female_shot_put_heads
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female_shot_put_heads = Female_shot_putHead.page(page).per_page(per_page)
    female_shot_put_heads = FemaleShotPutHead.order("#{sort_column} #{sort_direction}")
    female_shot_put_heads = female_shot_put_heads.page(page).per(per_page)
    female_shot_put_heads = female_shot_put_heads.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( championship_id fecha hora )
  end

end