class StartFemaleHammerThrowsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female_hammer_throws.map do |start_female_hammer_throw|
      [ 
        best_in_place(start_female_hammer_throw, :place),
        best_in_place(start_female_hammer_throw, :achievement),
        best_in_place(start_female_hammer_throw, :rail),
        best_in_place(start_female_hammer_throw, :number),
        best_in_place(start_female_hammer_throw, :athlete),
        best_in_place(start_female_hammer_throw, :an),
        best_in_place(start_female_hammer_throw, :club),
        best_in_place(start_female_hammer_throw, :region),
        best_in_place(start_female_hammer_throw, :country),
        best_in_place(start_female_hammer_throw, :femalehammerthrowStart_id),
   ]
     end
  end
 
  def count
    StartFemaleHammerThrow.count
  end

  def total_entries
    start_female_hammer_throws.total_count
    # will_paginate
    # start_female_hammer_throws.total_entries
  end

  def start_female_hammer_throws
    @start_female_hammer_throws ||= fetch_start_female_hammer_throws
  end

  def fetch_start_female_hammer_throws
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female_hammer_throws = StartFemaleHammerThrow.page(page).per_page(per_page)
    start_female_hammer_throws = StartFemaleHammerThrow.order("#{sort_column} #{sort_direction}")
    start_female_hammer_throws = start_female_hammer_throws.page(page).per(per_page)
    start_female_hammer_throws = start_female_hammer_throws.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femalehammerthrowStart_id)
  end

end