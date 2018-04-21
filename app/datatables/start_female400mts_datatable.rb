class StartFemale400mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female400mts.map do |start_female400mt|
      [ 
  
        best_in_place(start_female400mt, :achievement),
        best_in_place(start_female400mt, :rail),
        best_in_place(start_female400mt, :number),
        best_in_place(start_female400mt, :athlete),
        best_in_place(start_female400mt, :an),
        best_in_place(start_female400mt, :club),
        best_in_place(start_female400mt, :region),
        best_in_place(start_female400mt, :country),
        best_in_place(start_female400mt, :female400mtsHead_id),
   ]
     end
  end
 
  def count
    StartFemale400mt.count
  end

  def total_entries
    start_female400mts.total_count
    # will_paginate
    # start_female400mts.total_entries
  end

  def start_female400mts
    @start_female400mts ||= fetch_start_female400mts
  end

  def fetch_start_female400mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female400mts = StartFemale400mt.page(page).per_page(per_page)
    start_female400mts = StartFemale400mt.order("#{sort_column} #{sort_direction}")
    start_female400mts = start_female400mts.page(page).per(per_page)
    start_female400mts = start_female400mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female400mtsHead_id)
  end

end