class StartMale10000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male10000mts.map do |start_male10000mt|
      [ 
        best_in_place(start_male10000mt, :place),
        best_in_place(start_male10000mt, :achievement),
        best_in_place(start_male10000mt, :rail),
        best_in_place(start_male10000mt, :number),
        best_in_place(start_male10000mt, :athlete),
        best_in_place(start_male10000mt, :an),
        best_in_place(start_male10000mt, :club),
        best_in_place(start_male10000mt, :region),
        best_in_place(start_male10000mt, :country),
        best_in_place(start_male10000mt, :male10000mtStart_id),
   ]
     end
  end
 
  def count
    StartMale10000mt.count
  end

  def total_entries
    start_male10000mts.total_count
    # will_paginate
    # start_male10000mts.total_entries
  end

  def start_male10000mts
    @start_male10000mts ||= fetch_start_male10000mts
  end

  def fetch_start_male10000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male10000mts = StartMale10000mt.page(page).per_page(per_page)
    start_male10000mts = StartMale10000mt.order("#{sort_column} #{sort_direction}")
    start_male10000mts = start_male10000mts.page(page).per(per_page)
    start_male10000mts = start_male10000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male10000mtStart_id)
  end

end