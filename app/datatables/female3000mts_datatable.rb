class Female3000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female3000mts.map do |female3000mt|
      [ 
        best_in_place(female3000mt, :place),
        best_in_place(female3000mt, :achievement),
        best_in_place(female3000mt, :rail),
        best_in_place(female3000mt, :number),
        best_in_place(female3000mt, :athlete),
        best_in_place(female3000mt, :an),
        best_in_place(female3000mt, :club),
        best_in_place(female3000mt, :region),
        best_in_place(female3000mt, :country),
        best_in_place(female3000mt, :female3000mtHead_id),
   ]
     end
  end
 
  def count
    Female3000mt.count
  end

  def total_entries
    female3000mts.total_count
    # will_paginate
    # female3000mts.total_entries
  end

  def female3000mts
    @female3000mts ||= fetch_female3000mts
  end

  def fetch_female3000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female3000mts = Female3000mt.page(page).per_page(per_page)
    female3000mts = Female3000mt.order("#{sort_column} #{sort_direction}")
    female3000mts = female3000mts.page(page).per(per_page)
    female3000mts = female3000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female3000mtHead_id)
  end

end