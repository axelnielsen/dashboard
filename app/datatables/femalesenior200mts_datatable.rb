class Femalesenior200mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    femalesenior200mts.map do |femalesenior200mt|
      [ 
        best_in_place(femalesenior200mt, :place),
        best_in_place(femalesenior200mt, :achievement),
        best_in_place(femalesenior200mt, :rail),
        best_in_place(femalesenior200mt, :number),
        best_in_place(femalesenior200mt, :athlete),
        best_in_place(femalesenior200mt, :an),
        best_in_place(femalesenior200mt, :club),
        best_in_place(femalesenior200mt, :region),
        best_in_place(femalesenior200mt, :country),
        best_in_place(femalesenior200mt, :femaleSenior200mts_id),
   ]
     end
  end
 
  def count
    Femalesenior200mt.count
  end

  def total_entries
    femalesenior200mts.total_count
    # will_paginate
    # femalesenior200mts.total_entries
  end

  def femalesenior200mts
    @femalesenior200mts ||= fetch_femalesenior200mts
  end

  def fetch_femalesenior200mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # femalesenior200mts = Femalesenior200mt.page(page).per_page(per_page)
    femalesenior200mts = Femalesenior200mt.order("#{sort_column} #{sort_direction}")
    femalesenior200mts = femalesenior200mts.page(page).per(per_page)
    femalesenior200mts = femalesenior200mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femaleSenior200mts_id)
  end

end