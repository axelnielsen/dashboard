class StartMale8x50mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male8x50mts.map do |start_male8x50mt|
      [ 
        best_in_place(start_male8x50mt, :place),
        best_in_place(start_male8x50mt, :achievement),
        best_in_place(start_male8x50mt, :rail),
        best_in_place(start_male8x50mt, :number),
        best_in_place(start_male8x50mt, :athlete),
        best_in_place(start_male8x50mt, :an),
        best_in_place(start_male8x50mt, :club),
        best_in_place(start_male8x50mt, :region),
        best_in_place(start_male8x50mt, :country),
        best_in_place(start_male8x50mt, :male8x50mtStart_id),
   ]
     end
  end
 
  def count
    StartMale8x50mt.count
  end

  def total_entries
    start_male8x50mts.total_count
    # will_paginate
    # start_male8x50mts.total_entries
  end

  def start_male8x50mts
    @start_male8x50mts ||= fetch_start_male8x50mts
  end

  def fetch_start_male8x50mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male8x50mts = StartMale8x50mt.page(page).per_page(per_page)
    start_male8x50mts = StartMale8x50mt.order("#{sort_column} #{sort_direction}")
    start_male8x50mts = start_male8x50mts.page(page).per(per_page)
    start_male8x50mts = start_male8x50mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male8x50mtStart_id)
  end

end