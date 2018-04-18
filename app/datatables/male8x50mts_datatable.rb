class Male8x50mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male8x50mts.map do |male8x50mt|
      [ 
        best_in_place(male8x50mt, :place),
        best_in_place(male8x50mt, :achievement),
        best_in_place(male8x50mt, :rail),
        best_in_place(male8x50mt, :number),
        best_in_place(male8x50mt, :athlete),
        best_in_place(male8x50mt, :an),
        best_in_place(male8x50mt, :club),
        best_in_place(male8x50mt, :region),
        best_in_place(male8x50mt, :country),
        best_in_place(male8x50mt, :male8x50mts_id),
   ]
     end
  end
 
  def count
    Male8x50mt.count
  end

  def total_entries
    male8x50mts.total_count
    # will_paginate
    # male8x50mts.total_entries
  end

  def male8x50mts
    @male8x50mts ||= fetch_male8x50mts
  end

  def fetch_male8x50mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male8x50mts = Male8x50mt.page(page).per_page(per_page)
    male8x50mts = Male8x50mt.order("#{sort_column} #{sort_direction}")
    male8x50mts = male8x50mts.page(page).per(per_page)
    male8x50mts = male8x50mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male8x50mts_id)
  end

end