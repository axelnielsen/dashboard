class FemaleHighJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female_high_jumps.map do |female_high_jump|
      [ 
        
 best_in_place(female_high_jump, :number),
        best_in_place(female_high_jump, :name),
        best_in_place(female_high_jump, :club),
        best_in_place(female_high_jump, :country),
        best_in_place(female_high_jump, :first),
        best_in_place(female_high_jump, :vvFirst),
        best_in_place(female_high_jump, :seconnd),
        best_in_place(female_high_jump, :third),
        best_in_place(female_high_jump, :vvThird),
        best_in_place(female_high_jump, :op),
        best_in_place(female_high_jump, :fourth),
        best_in_place(female_high_jump, :vvFourth),
        best_in_place(female_high_jump, :fift),
        best_in_place(female_high_jump, :vvFifth),
        best_in_place(female_high_jump, :sixth),
         best_in_place(female_high_jump, :vvSixth),
          best_in_place(female_high_jump, :achievement),
           best_in_place(female_high_jump, :place)       ]
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
