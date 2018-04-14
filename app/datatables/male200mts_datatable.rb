class Male200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male200mts.map do |male200mt|
      [ 
        best_in_place(male200mt, :place),
        best_in_place(male200mt, :achievement),
        best_in_place(male200mt, :rail),
        best_in_place(male200mt, :number),
        best_in_place(male200mt, :athlete),
        best_in_place(male200mt, :an),
        best_in_place(male200mt, :club),
        best_in_place(male200mt, :region),
        best_in_place(male200mt, :country),
        best_in_place(male200mt, :male200mtsHead_id),
   ]
     end
  end
 
  def count
    Male200mt.count
  end

  def total_entries
    male200mts.total_count
    # will_paginate
    # male200mts.total_entries
  end

  def male200mts
    @male200mts ||= fetch_male200mts
  end

  def fetch_male200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male200mts = Male200mt.page(page).per_page(per_page)
    male200mts = Male200mt.order("#{sort_column} #{sort_direction}")
    male200mts = male200mts.page(page).per(per_page)
    male200mts = male200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male200mtsHead_id)
  end

end