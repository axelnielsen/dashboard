class StartFemale4x100mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female4x100mts.map do |start_female4x100mt|
      [ 
        best_in_place(start_female4x100mt, :place),
        best_in_place(start_female4x100mt, :achievement),
        best_in_place(start_female4x100mt, :rail),
        best_in_place(start_female4x100mt, :number),
        best_in_place(start_female4x100mt, :athlete),
        best_in_place(start_female4x100mt, :an),
        best_in_place(start_female4x100mt, :club),
        best_in_place(start_female4x100mt, :region),
        best_in_place(start_female4x100mt, :country),
        best_in_place(start_female4x100mt, :female4x100mtStart_id),
   ]
     end
  end
 
  def count
    StartFemale4x100mt.count
  end

  def total_entries
    start_female4x100mts.total_count
    # will_paginate
    # start_female4x100mts.total_entries
  end

  def start_female4x100mts
    @start_female4x100mts ||= fetch_start_female4x100mts
  end

  def fetch_start_female4x100mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female4x100mts = StartFemale4x100mt.page(page).per_page(per_page)
    start_female4x100mts = StartFemale4x100mt.order("#{sort_column} #{sort_direction}")
    start_female4x100mts = start_female4x100mts.page(page).per(per_page)
    start_female4x100mts = start_female4x100mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female4x100mtStart_id)
  end

end