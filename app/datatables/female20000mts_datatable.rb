class Female20000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female20000mts.map do |female20000mt|
      [ 
        best_in_place(female20000mt, :place),
        best_in_place(female20000mt, :achievement),
        best_in_place(female20000mt, :rail),
        best_in_place(female20000mt, :number),
        best_in_place(female20000mt, :athlete),
        best_in_place(female20000mt, :an),
        best_in_place(female20000mt, :club),
        best_in_place(female20000mt, :region),
        best_in_place(female20000mt, :country),
        best_in_place(female20000mt, :female20000mtHead_id),
   ]
     end
  end
 
  def count
    Female20000mt.count
  end

  def total_entries
    female20000mts.total_count
    # will_paginate
    # female20000mts.total_entries
  end

  def female20000mts
    @female20000mts ||= fetch_female20000mts
  end

  def fetch_female20000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female20000mts = Female20000mt.page(page).per_page(per_page)
    female20000mts = Female20000mt.order("#{sort_column} #{sort_direction}")
    female20000mts = female20000mts.page(page).per(per_page)
    female20000mts = female20000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female20000mtHead_id)
  end

end