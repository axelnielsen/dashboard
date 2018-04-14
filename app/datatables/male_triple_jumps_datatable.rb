class MaleTripleJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_male_triple_jump_path, to: :@view

  private
   def data
    male_triple_jumps.map do |male_triple_jump|
      [ 
         best_in_place(male_triple_jump, :number),
        best_in_place(male_triple_jump, :name),
        best_in_place(male_triple_jump, :an),
        best_in_place(male_triple_jump, :club),
        best_in_place(male_triple_jump, :reg),
        best_in_place(male_triple_jump, :country),
        best_in_place(male_triple_jump, :first),
        best_in_place(male_triple_jump, :vvFirst),
        best_in_place(male_triple_jump, :seconnd),
        best_in_place(male_triple_jump, :vvSecond),
        best_in_place(male_triple_jump, :third),
        best_in_place(male_triple_jump, :vvThird),
        best_in_place(male_triple_jump, :op),
        best_in_place(male_triple_jump, :fourth),
        best_in_place(male_triple_jump, :vvFourth),
        best_in_place(male_triple_jump, :fift),
        best_in_place(male_triple_jump, :vvFifth),
        best_in_place(male_triple_jump, :sixth),
        best_in_place(male_triple_jump, :vvSixth),
        best_in_place(male_triple_jump, :achievement),
        best_in_place(male_triple_jump, :place)
      ]
     end
  end
 
  def count
    MaleTripleJump.count
  end

  def total_entries
    male_triple_jumps.total_count
    # will_paginate
    # male_triple_jumps.total_entries
  end

  def male_triple_jumps
    @male_triple_jumps ||= fetch_male_triple_jumps
  end

  def fetch_male_triple_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_triple_jumps = MaleTriplemale_triple_jump.page(page).per_page(per_page)
    male_triple_jumps = MaleTripleJump.order("#{sort_column} #{sort_direction}")
    male_triple_jumps = male_triple_jumps.page(page).per(per_page)
    male_triple_jumps = male_triple_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(number name an club country first vvFirst seconnd vvSecond third vvThird op fourth vvFourth fift vvFifth sixth vvSixth achievement place )
  end

end