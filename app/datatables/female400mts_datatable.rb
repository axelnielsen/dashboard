class Female400mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female400mts.map do |female400mt|
      [ 
         best_in_place(female400mt, :an),
        best_in_place(female400mt, :place),
        best_in_place(female400mt, :achievement),
        best_in_place(female400mt, :rail),
        best_in_place(female400mt, :number),
        best_in_place(female400mt, :athlete),
       
        best_in_place(female400mt, :club),
        best_in_place(female400mt, :region),
        best_in_place(female400mt, :country),
        best_in_place(female400mt, :female400mtsHead_id),
   ]
     end
  end
 
  def count
    Female400mt.count
  end

  def total_entries
    female400mts.total_count
    # will_paginate
    # female400mts.total_entries
  end

  def female400mts
    @female400mts ||= fetch_female400mts
  end

  def fetch_female400mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female400mts = Female400mt.page(page).per_page(per_page)
    female400mts = Female400mt.order("#{sort_column} #{sort_direction}")
    female400mts = female400mts.page(page).per(per_page)
    female400mts = female400mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female400mtsHead_id)
  end

end