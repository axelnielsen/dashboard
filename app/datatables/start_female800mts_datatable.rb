class StartFemale800mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female800mts.map do |start_female800mt|
      [ 
        best_in_place(start_female800mt, :place),
        best_in_place(start_female800mt, :achievement),
        best_in_place(start_female800mt, :rail),
        best_in_place(start_female800mt, :number),
        best_in_place(start_female800mt, :athlete),
        best_in_place(start_female800mt, :an),
        best_in_place(start_female800mt, :club),
        best_in_place(start_female800mt, :region),
        best_in_place(start_female800mt, :country),
        best_in_place(start_female800mt, :female800mtStart_id),
   ]
     end
  end
 
  def count
    StartFemale800mt.count
  end

  def total_entries
    start_female800mts.total_count
    # will_paginate
    # start_female800mts.total_entries
  end

  def start_female800mts
    @start_female800mts ||= fetch_start_female800mts
  end

  def fetch_start_female800mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female800mts = StartFemale800mt.page(page).per_page(per_page)
    start_female800mts = StartFemale800mt.order("#{sort_column} #{sort_direction}")
    start_female800mts = start_female800mts.page(page).per(per_page)
    start_female800mts = start_female800mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female800mtStart_id)
  end

end