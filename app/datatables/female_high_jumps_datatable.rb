class FemaleHighJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female_high_jumps.map do |female_high_jump|
      [ 
        
        best_in_place(female_high_jump, :championship_id),
        best_in_place(female_high_jump, :fecha),
        best_in_place(female_high_jump, :hora)
       ]
     end
  end
 
  def count
    FemaleHighJump.count
  end

  def total_entries
    female_high_jumps.total_count
    # will_paginate
    # female_high_jumps.total_entries
  end

  def female_high_jumps
    @female_high_jumps ||= fetch_female_high_jumps
  end

  def fetch_female_high_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female_high_jumps = FemaleHighJump.page(page).per_page(per_page)
    female_high_jumps = FemaleHighJump.order("#{sort_column} #{sort_direction}")
    female_high_jumps = female_high_jumps.page(page).per(per_page)
    female_high_jumps = female_high_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

   def columns
    %w(number name an club country first vvFirst seconnd vvSecond third vvThird op fourth vvFourth fift vvFifth sixth vvSixth achievement place )
  end

end