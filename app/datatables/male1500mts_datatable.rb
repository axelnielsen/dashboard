class Male1500mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male1500mts.map do |male1500mt|
      [ 
        best_in_place(male1500mt, :place),
        best_in_place(male1500mt, :achievement),
        best_in_place(male1500mt, :rail),
        best_in_place(male1500mt, :number),
        best_in_place(male1500mt, :athlete),
        best_in_place(male1500mt, :an),
        best_in_place(male1500mt, :club),
        best_in_place(male1500mt, :region),
        best_in_place(male1500mt, :country),
        best_in_place(male1500mt, :male1500mtsHead_id),
   ]
     end
  end
 
  def count
    Male1500mt.count
  end

  def total_entries
    male1500mts.total_count
    # will_paginate
    # male1500mts.total_entries
  end

  def male1500mts
    @male1500mts ||= fetch_male1500mts
  end

  def fetch_male1500mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male1500mts = Male1500mt.page(page).per_page(per_page)
    male1500mts = Male1500mt.order("#{sort_column} #{sort_direction}")
    male1500mts = male1500mts.page(page).per(per_page)
    male1500mts = male1500mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male1500mtsHead_id)
  end

end