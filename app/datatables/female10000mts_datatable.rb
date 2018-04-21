class Female10000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female10000mts.map do |female10000mt|
      [ 
        best_in_place(female10000mt, :place),
        best_in_place(female10000mt, :achievement),
        best_in_place(female10000mt, :rail),
        best_in_place(female10000mt, :number),
        best_in_place(female10000mt, :athlete),
        best_in_place(female10000mt, :an),
        best_in_place(female10000mt, :club),
        best_in_place(female10000mt, :region),
        best_in_place(female10000mt, :country),
        best_in_place(female10000mt, :female10000mtHead_id),
   ]
     end
  end
 
  def count
    Female10000mt.count
  end

  def total_entries
    female10000mts.total_count
    # will_paginate
    # female10000mts.total_entries
  end

  def female10000mts
    @female10000mts ||= fetch_female10000mts
  end

  def fetch_female10000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female10000mts = Female10000mt.page(page).per_page(per_page)
    female10000mts = Female10000mt.order("#{sort_column} #{sort_direction}")
    female10000mts = female10000mts.page(page).per(per_page)
    female10000mts = female10000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female10000mtHead_id)
  end

end