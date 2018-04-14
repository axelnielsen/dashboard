class StartMale200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male200mts.map do |start_male200mt|
      [ 
        best_in_place(start_male200mt, :place),
        best_in_place(start_male200mt, :achievement),
        best_in_place(start_male200mt, :rail),
        best_in_place(start_male200mt, :number),
        best_in_place(start_male200mt, :athlete),
        best_in_place(start_male200mt, :an),
        best_in_place(start_male200mt, :club),
        best_in_place(start_male200mt, :region),
        best_in_place(start_male200mt, :country),
        best_in_place(start_male200mt, :male200mtsHead_id),
   ]
     end
  end
 
  def count
    StartMale200mt.count
  end

  def total_entries
    start_male200mts.total_count
    # will_paginate
    # start_male200mts.total_entries
  end

  def start_male200mts
    @start_male200mts ||= fetch_start_male200mts
  end

  def fetch_start_male200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male200mts = StartMale200mt.page(page).per_page(per_page)
    start_male200mts = StartMale200mt.order("#{sort_column} #{sort_direction}")
    start_male200mts = start_male200mts.page(page).per(per_page)
    start_male200mts = start_male200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male200mtsHead_id)
  end

end