class StartMale100mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male100mts.map do |start_male100mt|
      [ 
        best_in_place(start_male100mt, :place),
        best_in_place(start_male100mt, :achievement),
        best_in_place(start_male100mt, :rail),
        best_in_place(start_male100mt, :number),
        best_in_place(start_male100mt, :athlete),
        best_in_place(start_male100mt, :an),
        best_in_place(start_male100mt, :club),
        best_in_place(start_male100mt, :region),
        best_in_place(start_male100mt, :country),
        best_in_place(start_male100mt, :male100mtsHead_id),
   ]
     end
  end
 
  def count
    StartMale100mt.count
  end

  def total_entries
    start_male100mts.total_count
    # will_paginate
    # start_male100mts.total_entries
  end

  def start_male100mts
    @start_male100mts ||= fetch_start_male100mts
  end

  def fetch_start_male100mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male100mts = StartMale100mt.page(page).per_page(per_page)
    start_male100mts = StartMale100mt.order("#{sort_column} #{sort_direction}")
    start_male100mts = start_male100mts.page(page).per(per_page)
    start_male100mts = start_male100mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male100mtsHead_id)
  end

end