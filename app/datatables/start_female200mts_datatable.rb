class StartFemale200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female200mts.map do |start_female200mt|
      [ 
        best_in_place(start_female200mt, :place),
        best_in_place(start_female200mt, :achievement),
        best_in_place(start_female200mt, :rail),
        best_in_place(start_female200mt, :number),
        best_in_place(start_female200mt, :athlete),
        best_in_place(start_female200mt, :an),
        best_in_place(start_female200mt, :club),
        best_in_place(start_female200mt, :region),
        best_in_place(start_female200mt, :country),
        best_in_place(start_female200mt, :female200mtsHead_id),
   ]
     end
  end
 
  def count
    StartFemale200mt.count
  end

  def total_entries
    start_female200mts.total_count
    # will_paginate
    # start_female200mts.total_entries
  end

  def start_female200mts
    @start_female200mts ||= fetch_start_female200mts
  end

  def fetch_start_female200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female200mts = StartFemale200mt.page(page).per_page(per_page)
    start_female200mts = StartFemale200mt.order("#{sort_column} #{sort_direction}")
    start_female200mts = start_female200mts.page(page).per(per_page)
    start_female200mts = start_female200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female200mtsHead_id)
  end

end