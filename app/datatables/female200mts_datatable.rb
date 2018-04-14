class Female200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female200mts.map do |female200mt|
      [ 
        best_in_place(female200mt, :place),
        best_in_place(female200mt, :achievement),
        best_in_place(female200mt, :rail),
        best_in_place(female200mt, :number),
        best_in_place(female200mt, :athlete),
        best_in_place(female200mt, :an),
        best_in_place(female200mt, :club),
        best_in_place(female200mt, :region),
        best_in_place(female200mt, :country),
        best_in_place(female200mt, :female200mtsHead_id),
   ]
     end
  end
 
  def count
    Female200mt.count
  end

  def total_entries
    female200mts.total_count
    # will_paginate
    # female200mts.total_entries
  end

  def female200mts
    @female200mts ||= fetch_female200mts
  end

  def fetch_female200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female200mts = Female200mt.page(page).per_page(per_page)
    female200mts = Female200mt.order("#{sort_column} #{sort_direction}")
    female200mts = female200mts.page(page).per(per_page)
    female200mts = female200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female200mtsHead_id)
  end

end