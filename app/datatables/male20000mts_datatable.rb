class Male20000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male20000mts.map do |male20000mt|
      [ 
        best_in_place(male20000mt, :place),
        best_in_place(male20000mt, :achievement),
        best_in_place(male20000mt, :rail),
        best_in_place(male20000mt, :number),
        best_in_place(male20000mt, :athlete),
        best_in_place(male20000mt, :an),
        best_in_place(male20000mt, :club),
        best_in_place(male20000mt, :region),
        best_in_place(male20000mt, :country),
        best_in_place(male20000mt, :male20000mtHead_id),
   ]
     end
  end
 
  def count
    Male20000mt.count
  end

  def total_entries
    male20000mts.total_count
    # will_paginate
    # male20000mts.total_entries
  end

  def male20000mts
    @male20000mts ||= fetch_male20000mts
  end

  def fetch_male20000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male20000mts = StartMale20000mt.page(page).per_page(per_page)
    male20000mts = Male20000mt.order("#{sort_column} #{sort_direction}")
    male20000mts = male20000mts.page(page).per(per_page)
    male20000mts = male20000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male20000mtHead_id)
  end

end