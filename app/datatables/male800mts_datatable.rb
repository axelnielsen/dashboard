class Male800mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male800mts.map do |male800mt|
      [ 
        best_in_place(male800mt, :place),
        best_in_place(male800mt, :achievement),
        best_in_place(male800mt, :rail),
        best_in_place(male800mt, :number),
        best_in_place(male800mt, :athlete),
        best_in_place(male800mt, :an),
        best_in_place(male800mt, :club),
        best_in_place(male800mt, :region),
        best_in_place(male800mt, :country),
        best_in_place(male800mt, :male800mtHead_id),
   ]
     end
  end
 
  def count
    Male800mt.count
  end

  def total_entries
    male800mts.total_count
    # will_paginate
    # male800mts.total_entries
  end

  def male800mts
    @male800mts ||= fetch_male800mts
  end

  def fetch_male800mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male800mts = StartMale800mt.page(page).per_page(per_page)
    male800mts = Male800mt.order("#{sort_column} #{sort_direction}")
    male800mts = male800mts.page(page).per(per_page)
    male800mts = male800mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male800mtHead_id)
  end

end