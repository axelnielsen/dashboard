class MalePoleJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male_pole_jumps.map do |male_pole_jump|
      [ 
        best_in_place(male_pole_jump, :place),
        best_in_place(male_pole_jump, :achievement),
        best_in_place(male_pole_jump, :rail),
        best_in_place(male_pole_jump, :number),
        best_in_place(male_pole_jump, :athlete),
        best_in_place(male_pole_jump, :an),
        best_in_place(male_pole_jump, :club),
        best_in_place(male_pole_jump, :region),
        best_in_place(male_pole_jump, :country),
        best_in_place(male_pole_jump, :malepolejumpsHead_id),
   ]
     end
  end
 
  def count
    MalePoleJump.count
  end

  def total_entries
    male_pole_jumps.total_count
    # will_paginate
    # male_pole_jumps.total_entries
  end

  def male_pole_jumps
    @male_pole_jumps ||= fetch_male_pole_jumps
  end

  def fetch_male_pole_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_pole_jumps = MalePoleJump.page(page).per_page(per_page)
    male_pole_jumps = MalePoleJump.order("#{sort_column} #{sort_direction}")
    male_pole_jumps = male_pole_jumps.page(page).per(per_page)
    male_pole_jumps = male_pole_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  malepolejumpsHead_id)
  end

end