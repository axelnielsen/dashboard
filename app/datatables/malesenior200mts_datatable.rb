class Malesenior200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    malesenior200mts.map do |malesenior200mt|
      [ 
        best_in_place(malesenior200mt, :place),
        best_in_place(malesenior200mt, :achievement),
        best_in_place(malesenior200mt, :rail),
        best_in_place(malesenior200mt, :number),
        best_in_place(malesenior200mt, :athlete),
        best_in_place(malesenior200mt, :an),
        best_in_place(malesenior200mt, :club),
        best_in_place(malesenior200mt, :region),
        best_in_place(malesenior200mt, :country),
        best_in_place(malesenior200mt, :maleSenior200mts_id),
   ]
     end
  end
 
  def count
    Malesenior200mt.count
  end

  def total_entries
    malesenior200mts.total_count
    # will_paginate
    # malesenior200mts.total_entries
  end

  def malesenior200mts
    @malesenior200mts ||= fetch_malesenior200mts
  end

  def fetch_malesenior200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # malesenior200mts = Malesenior200mt.page(page).per_page(per_page)
    malesenior200mts = Malesenior200mt.order("#{sort_column} #{sort_direction}")
    malesenior200mts = malesenior200mts.page(page).per(per_page)
    malesenior200mts = malesenior200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country maleSenior200mts_id)
  end

end