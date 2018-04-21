class Female800mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female800mts.map do |female800mt|
      [ 
        best_in_place(female800mt, :place),
        best_in_place(female800mt, :achievement),
        best_in_place(female800mt, :rail),
        best_in_place(female800mt, :number),
        best_in_place(female800mt, :athlete),
        best_in_place(female800mt, :an),
        best_in_place(female800mt, :club),
        best_in_place(female800mt, :region),
        best_in_place(female800mt, :country),
        best_in_place(female800mt, :female800mtHead_id),
   ]
     end
  end
 
  def count
    Female800mt.count
  end

  def total_entries
    female800mts.total_count
    # will_paginate
    # female800mts.total_entries
  end

  def female800mts
    @female800mts ||= fetch_female800mts
  end

  def fetch_female800mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female800mts = Female800mt.page(page).per_page(per_page)
    female800mts = Female800mt.order("#{sort_column} #{sort_direction}")
    female800mts = female800mts.page(page).per(per_page)
    female800mts = female800mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female800mtHead_id)
  end

end