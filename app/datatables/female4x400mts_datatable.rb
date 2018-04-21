class Female4x400mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female4x400mts.map do |female4x400mt|
      [ 
        best_in_place(female4x400mt, :place),
        best_in_place(female4x400mt, :achievement),
        best_in_place(female4x400mt, :rail),
        best_in_place(female4x400mt, :number),
        best_in_place(female4x400mt, :athlete),
        best_in_place(female4x400mt, :an),
        best_in_place(female4x400mt, :club),
        best_in_place(female4x400mt, :region),
        best_in_place(female4x400mt, :country),
        best_in_place(female4x400mt, :female4x400mtHead_id),
   ]
     end
  end
 
  def count
    Female4x400mt.count
  end

  def total_entries
    female4x400mts.total_count
    # will_paginate
    # female4x400mts.total_entries
  end

  def female4x400mts
    @female4x400mts ||= fetch_female4x400mts
  end

  def fetch_female4x400mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female4x400mts = Female4x400mt.page(page).per_page(per_page)
    female4x400mts = Female4x400mt.order("#{sort_column} #{sort_direction}")
    female4x400mts = female4x400mts.page(page).per(per_page)
    female4x400mts = female4x400mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female4x400mtHead_id)
  end

end