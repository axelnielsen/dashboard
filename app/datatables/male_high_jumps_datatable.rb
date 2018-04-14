class MaleHighJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_male_high_jump_path, to: :@view

  private
   def data
    male_high_jumps.map do |male_high_jump|
      [ 
         best_in_place(male_high_jump, :number),
        best_in_place(male_high_jump, :name),
        best_in_place(male_high_jump, :an),
        best_in_place(male_high_jump, :club),
        best_in_place(male_high_jump, :reg),
        best_in_place(male_high_jump, :country),
        best_in_place(male_high_jump, :first),
        best_in_place(male_high_jump, :vvFirst),
        best_in_place(male_high_jump, :seconnd),
        best_in_place(male_high_jump, :vvSecond),
        best_in_place(male_high_jump, :third),
        best_in_place(male_high_jump, :vvThird),
        best_in_place(male_high_jump, :op),
        best_in_place(male_high_jump, :fourth),
        best_in_place(male_high_jump, :vvFourth),
        best_in_place(male_high_jump, :fift),
        best_in_place(male_high_jump, :vvFifth),
        best_in_place(male_high_jump, :sixth),
        best_in_place(male_high_jump, :vvSixth),
        best_in_place(male_high_jump, :achievement),
        best_in_place(male_high_jump, :place)
      ]
     end
  end
 
  def count
    MaleHighJump.count
  end

  def total_entries
    male_high_jumps.total_count
    # will_paginate
    # male_high_jumps.total_entries
  end

  def male_high_jumps
    @male_high_jumps ||= fetch_male_high_jumps
  end

  def fetch_male_high_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_high_jumps = MaleHighJump.page(page).per_page(per_page)
    male_high_jumps = MaleHighJump.order("#{sort_column} #{sort_direction}")
    male_high_jumps = male_high_jumps.page(page).per(per_page)
    male_high_jumps = male_high_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(number name an club country first vvFirst seconnd vvSecond third vvThird op fourth vvFourth fift vvFifth sixth vvSixth achievement place )
  end

end