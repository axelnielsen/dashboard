class StartFemaleHighJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female_high_jumps.map do |start_female_high_jump|
      [ 
        
        best_in_place(start_female_high_jump, :achievement),
        best_in_place(start_female_high_jump, :rail),
      
        best_in_place(start_female_high_jump, :athlete),
        best_in_place(start_female_high_jump, :an),
        best_in_place(start_female_high_jump, :club),
        best_in_place(start_female_high_jump, :region),
        best_in_place(start_female_high_jump, :country),
        best_in_place(start_female_high_jump, :femalehighjumpStart_id),
   ]
     end
  end
 
  def count
    StartFemaleHighJump.count
  end

  def total_entries
    start_female_high_jumps.total_count
    # will_paginate
    # start_female_high_jumps.total_entries
  end

  def start_female_high_jumps
    @start_female_high_jumps ||= fetch_start_female_high_jumps
  end

  def fetch_start_female_high_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female_high_jumps = StartFemaleHighJump.page(page).per_page(per_page)
    start_female_high_jumps = StartFemaleHighJump.order("#{sort_column} #{sort_direction}")
    start_female_high_jumps = start_female_high_jumps.page(page).per(per_page)
    start_female_high_jumps = start_female_high_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femalehighjumpStart_id)
  end

end