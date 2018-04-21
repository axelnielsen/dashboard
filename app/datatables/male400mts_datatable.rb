class Male400mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male400mts.map do |male400mt|
      [ 
            best_in_place(male400mt, :an),
        best_in_place(male400mt, :place),
        best_in_place(male400mt, :achievement),
        best_in_place(male400mt, :rail),
        best_in_place(male400mt, :number),
        best_in_place(male400mt, :athlete),
    
        best_in_place(male400mt, :club),
        best_in_place(male400mt, :region),
        best_in_place(male400mt, :country),
        best_in_place(male400mt, :male400mtsHead_id),
   ]
     end
  end
 
  def count
    Male400mt.count
  end

  def total_entries
    male400mts.total_count
    # will_paginate
    # male400mts.total_entries
  end

  def male400mts
    @male400mts ||= fetch_male400mts
  end

  def fetch_male400mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male400mts = StartMale400mt.page(page).per_page(per_page)
    male400mts = Male400mt.order("#{sort_column} #{sort_direction}")
    male400mts = male400mts.page(page).per(per_page)
    male400mts = male400mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male400mtsHead_id)
  end

end