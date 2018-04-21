class StartMale800mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male800mts.map do |start_male800mt|
      [ 
        best_in_place(start_male800mt, :place),
        best_in_place(start_male800mt, :achievement),
        best_in_place(start_male800mt, :rail),
        best_in_place(start_male800mt, :number),
        best_in_place(start_male800mt, :athlete),
        best_in_place(start_male800mt, :an),
        best_in_place(start_male800mt, :club),
        best_in_place(start_male800mt, :region),
        best_in_place(start_male800mt, :country),
        best_in_place(start_male800mt, :male800mtStart_id),
   ]
     end
  end
 
  def count
    StartMale800mt.count
  end

  def total_entries
    start_male800mts.total_count
    # will_paginate
    # start_male800mts.total_entries
  end

  def start_male800mts
    @start_male800mts ||= fetch_start_male800mts
  end

  def fetch_start_male800mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male800mts = StartMale800mt.page(page).per_page(per_page)
    start_male800mts = StartMale800mt.order("#{sort_column} #{sort_direction}")
    start_male800mts = start_male800mts.page(page).per(per_page)
    start_male800mts = start_male800mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male800mtStart_id)
  end

end