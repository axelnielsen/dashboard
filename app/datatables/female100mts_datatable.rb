class Female100mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female100mts.map do |female100mt|
      [ 
        best_in_place(female100mt, :place),
        best_in_place(female100mt, :achievement),
        best_in_place(female100mt, :rail),
        best_in_place(female100mt, :number),
        best_in_place(female100mt, :athlete),
        best_in_place(female100mt, :an),
        best_in_place(female100mt, :club),
        best_in_place(female100mt, :region),
        best_in_place(female100mt, :country),
        best_in_place(female100mt, :female100mtsHead_id),
   ]
     end
  end
 
  def count
    Female100mt.count
  end

  def total_entries
    female100mts.total_count
    # will_paginate
    # female100mts.total_entries
  end

  def female100mts
    @female100mts ||= fetch_female100mts
  end

  def fetch_female100mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female100mts = Female100mt.page(page).per_page(per_page)
    female100mts = Female100mt.order("#{sort_column} #{sort_direction}")
    female100mts = female100mts.page(page).per(per_page)
    female100mts = female100mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female100mtsHead_id)
  end

end