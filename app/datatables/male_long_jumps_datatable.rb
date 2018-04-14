class MaleLongJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_male_long_jump_path, to: :@view

  private
   def data
    male_long_jumps.map do |male_long_jump|
      [ 
         best_in_place(male_long_jump, :number),
        best_in_place(male_long_jump, :name),
        best_in_place(male_long_jump, :an),
        best_in_place(male_long_jump, :club),
        best_in_place(male_long_jump, :reg),
        best_in_place(male_long_jump, :country),
        best_in_place(male_long_jump, :first),
        best_in_place(male_long_jump, :vvFirst),
        best_in_place(male_long_jump, :seconnd),
        best_in_place(male_long_jump, :vvSecond),
        best_in_place(male_long_jump, :third),
        best_in_place(male_long_jump, :vvThird),
        best_in_place(male_long_jump, :op),
        best_in_place(male_long_jump, :fourth),
        best_in_place(male_long_jump, :vvFourth),
        best_in_place(male_long_jump, :fift),
        best_in_place(male_long_jump, :vvFifth),
        best_in_place(male_long_jump, :sixth),
        best_in_place(male_long_jump, :vvSixth),
        best_in_place(male_long_jump, :achievement),
        best_in_place(male_long_jump, :place)
      ]
     end
  end
 
  def count
    MaleLongJump.count
  end

  def total_entries
    male_long_jumps.total_count
    # will_paginate
    # male_long_jumps.total_entries
  end

  def male_long_jumps
    @male_long_jumps ||= fetch_male_long_jumps
  end

  def fetch_male_long_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_long_jumps = MaleLongJump.page(page).per_page(per_page)
    male_long_jumps = MaleLongJump.order("#{sort_column} #{sort_direction}")
    male_long_jumps = male_long_jumps.page(page).per(per_page)
    male_long_jumps = male_long_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(number name an club country first vvFirst seconnd vvSecond third vvThird op fourth vvFourth fift vvFifth sixth vvSixth achievement place )
  end

end