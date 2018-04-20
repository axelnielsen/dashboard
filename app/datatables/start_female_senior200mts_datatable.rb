class StartFemaleSenior200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female_senior200mts.map do |start_female_senior200mt|
      [ 
        best_in_place(start_female_senior200mt, :place),
        best_in_place(start_female_senior200mt, :achievement),
        best_in_place(start_female_senior200mt, :rail),
        best_in_place(start_female_senior200mt, :number),
        best_in_place(start_female_senior200mt, :athlete),
        best_in_place(start_female_senior200mt, :an),
        best_in_place(start_female_senior200mt, :club),
        best_in_place(start_female_senior200mt, :region),
        best_in_place(start_female_senior200mt, :country),
        best_in_place(start_female_senior200mt, :femalesenior200mtStart_id),
   ]
     end
  end
 
  def count
    StartFemaleSenior200mt.count
  end

  def total_entries
    start_female_senior200mts.total_count
    # will_paginate
    # start_female_senior200mts.total_entries
  end

  def start_female_senior200mts
    @start_female_senior200mts ||= fetch_start_female_senior200mts
  end

  def fetch_start_female_senior200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female_senior200mts = StartFemaleSenior200mt.page(page).per_page(per_page)
    start_female_senior200mts = StartFemaleSenior200mt.order("#{sort_column} #{sort_direction}")
    start_female_senior200mts = start_female_senior200mts.page(page).per(per_page)
    start_female_senior200mts = start_female_senior200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femalesenior200mtStart_id)
  end

end