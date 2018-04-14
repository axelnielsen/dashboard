class StartMale400mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male400mts.map do |start_male400mt|
      [ 
        best_in_place(start_male400mt, :place),
        best_in_place(start_male400mt, :achievement),
        best_in_place(start_male400mt, :rail),
        best_in_place(start_male400mt, :number),
        best_in_place(start_male400mt, :athlete),
        best_in_place(start_male400mt, :an),
        best_in_place(start_male400mt, :club),
        best_in_place(start_male400mt, :region),
        best_in_place(start_male400mt, :country),
        best_in_place(start_male400mt, :male400mtsHead_id),
   ]
     end
  end
 
  def count
    StartMale400mt.count
  end

  def total_entries
    start_male400mts.total_count
    # will_paginate
    # start_male400mts.total_entries
  end

  def start_male400mts
    @start_male400mts ||= fetch_start_male400mts
  end

  def fetch_start_male400mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male400mts = StartMale400mt.page(page).per_page(per_page)
    start_male400mts = StartMale400mt.order("#{sort_column} #{sort_direction}")
    start_male400mts = start_male400mts.page(page).per(per_page)
    start_male400mts = start_male400mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male400mtsHead_id)
  end

end