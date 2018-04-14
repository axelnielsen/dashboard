class StartFemale100mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female100mts.map do |start_female100mt|
      [ 
        best_in_place(start_female100mt, :place),
        best_in_place(start_female100mt, :achievement),
        best_in_place(start_female100mt, :rail),
        best_in_place(start_female100mt, :number),
        best_in_place(start_female100mt, :athlete),
        best_in_place(start_female100mt, :an),
        best_in_place(start_female100mt, :club),
        best_in_place(start_female100mt, :region),
        best_in_place(start_female100mt, :country),
        best_in_place(start_female100mt, :female100mtsHead_id),
   ]
     end
  end
 
  def count
    StartFemale100mt.count
  end

  def total_entries
    start_female100mts.total_count
    # will_paginate
    # start_female100mts.total_entries
  end

  def start_female100mts
    @start_female100mts ||= fetch_start_female100mts
  end

  def fetch_start_female100mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female100mts = StartFemale100mt.page(page).per_page(per_page)
    start_female100mts = StartFemale100mt.order("#{sort_column} #{sort_direction}")
    start_female100mts = start_female100mts.page(page).per(per_page)
    start_female100mts = start_female100mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female100mtsHead_id)
  end

end