class StartMaleSenior200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male_senior200mts.map do |start_male_senior200mt|
      [ 
        best_in_place(start_male_senior200mt, :place),
        best_in_place(start_male_senior200mt, :achievement),
        best_in_place(start_male_senior200mt, :rail),
        best_in_place(start_male_senior200mt, :number),
        best_in_place(start_male_senior200mt, :athlete),
        best_in_place(start_male_senior200mt, :an),
        best_in_place(start_male_senior200mt, :club),
        best_in_place(start_male_senior200mt, :region),
        best_in_place(start_male_senior200mt, :country),
        best_in_place(start_male_senior200mt, :malesenior200mtStart_id),
   ]
     end
  end
 
  def count
    StartMaleSenior200mt.count
  end

  def total_entries
    start_male_senior200mts.total_count
    # will_paginate
    # start_male_senior200mts.total_entries
  end

  def start_male_senior200mts
    @start_male_senior200mts ||= fetch_start_male_senior200mts
  end

  def fetch_start_male_senior200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male_senior200mts = StartMaleSenior200mt.page(page).per_page(per_page)
    start_male_senior200mts = StartMaleSenior200mt.order("#{sort_column} #{sort_direction}")
    start_male_senior200mts = start_male_senior200mts.page(page).per(per_page)
    start_male_senior200mts = start_male_senior200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country malesenior200mtStart_id)
  end

end