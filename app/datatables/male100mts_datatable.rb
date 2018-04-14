class Male100mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male100mts.map do |male100mt|
      [ 
        best_in_place(male100mt, :place),
        best_in_place(male100mt, :achievement),
        best_in_place(male100mt, :rail),
        best_in_place(male100mt, :number),
        best_in_place(male100mt, :athlete),
        best_in_place(male100mt, :an),
        best_in_place(male100mt, :club),
        best_in_place(male100mt, :region),
        best_in_place(male100mt, :country),
        best_in_place(male100mt, :male100mtsHead_id),
   ]
     end
  end
 
  def count
    Male100mt.count
  end

  def total_entries
    male100mts.total_count
    # will_paginate
    # male100mts.total_entries
  end

  def male100mts
    @male100mts ||= fetch_male100mts
  end

  def fetch_male100mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male100mts = Male100mt.page(page).per_page(per_page)
    male100mts = Male100mt.order("#{sort_column} #{sort_direction}")
    male100mts = male100mts.page(page).per(per_page)
    male100mts = male100mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male100mtsHead_id)
  end

end