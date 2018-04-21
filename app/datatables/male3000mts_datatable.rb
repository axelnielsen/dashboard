class Male3000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male3000mts.map do |male3000mt|
      [ 
        best_in_place(male3000mt, :place),
        best_in_place(male3000mt, :achievement),
        best_in_place(male3000mt, :rail),
        best_in_place(male3000mt, :number),
        best_in_place(male3000mt, :athlete),
        best_in_place(male3000mt, :an),
        best_in_place(male3000mt, :club),
        best_in_place(male3000mt, :region),
        best_in_place(male3000mt, :country),
        best_in_place(male3000mt, :male3000mtHead_id),
   ]
     end
  end
 
  def count
    Male3000mt.count
  end

  def total_entries
    male3000mts.total_count
    # will_paginate
    # male3000mts.total_entries
  end

  def male3000mts
    @male3000mts ||= fetch_male3000mts
  end

  def fetch_male3000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male3000mts = StartMale3000mt.page(page).per_page(per_page)
    male3000mts = Male3000mt.order("#{sort_column} #{sort_direction}")
    male3000mts = male3000mts.page(page).per(per_page)
    male3000mts = male3000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male3000mtHead_id)
  end

end