class StartFemalePoleJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female_pole_jumps.map do |start_female_pole_jump|
      [ 
        best_in_place(start_female_pole_jump, :place),
        best_in_place(start_female_pole_jump, :achievement),
        best_in_place(start_female_pole_jump, :rail),
        best_in_place(start_female_pole_jump, :number),
        best_in_place(start_female_pole_jump, :athlete),
        best_in_place(start_female_pole_jump, :an),
        best_in_place(start_female_pole_jump, :club),
        best_in_place(start_female_pole_jump, :region),
        best_in_place(start_female_pole_jump, :country),
        best_in_place(start_female_pole_jump, :femalepolejumpStart_id),
   ]
     end
  end
 
  def count
    StartFemalePoleJump.count
  end

  def total_entries
    start_female_pole_jumps.total_count
    # will_paginate
    # start_female_pole_jumps.total_entries
  end

  def start_female_pole_jumps
    @start_female_pole_jumps ||= fetch_start_female_pole_jumps
  end

  def fetch_start_female_pole_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female_pole_jumps = StartFemalePoleJump.page(page).per_page(per_page)
    start_female_pole_jumps = StartFemalePoleJump.order("#{sort_column} #{sort_direction}")
    start_female_pole_jumps = start_female_pole_jumps.page(page).per(per_page)
    start_female_pole_jumps = start_female_pole_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femalepolejumpStart_id)
  end

end