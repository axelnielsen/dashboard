class StartFemaleLongJumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female_long_jumps.map do |start_female_long_jump|
      [ 
        best_in_place(start_female_long_jump, :place),
        best_in_place(start_female_long_jump, :achievement),
        best_in_place(start_female_long_jump, :rail),
        best_in_place(start_female_long_jump, :number),
        best_in_place(start_female_long_jump, :athlete),
        best_in_place(start_female_long_jump, :an),
        best_in_place(start_female_long_jump, :club),
        best_in_place(start_female_long_jump, :region),
        best_in_place(start_female_long_jump, :country),
        best_in_place(start_female_long_jump, :femalelongjumpStart_id),
   ]
     end
  end
 
  def count
    StartFemaleLongJump.count
  end

  def total_entries
    start_female_long_jumps.total_count
    # will_paginate
    # start_female_long_jumps.total_entries
  end

  def start_female_long_jumps
    @start_female_long_jumps ||= fetch_start_female_long_jumps
  end

  def fetch_start_female_long_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female_long_jumps = StartFemaleLongJump.page(page).per_page(per_page)
    start_female_long_jumps = StartFemaleLongJump.order("#{sort_column} #{sort_direction}")
    start_female_long_jumps = start_female_long_jumps.page(page).per(per_page)
    start_female_long_jumps = start_female_long_jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femalelongjumpStart_id)
  end

end