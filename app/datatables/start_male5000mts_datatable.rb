class StartMale5000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male5000mts.map do |start_male5000mt|
      [ 
      
        best_in_place(start_male5000mt, :number),
        best_in_place(start_male5000mt, :athlete),
        best_in_place(start_male5000mt, :an),
        best_in_place(start_male5000mt, :club),
        best_in_place(start_male5000mt, :region),
        best_in_place(start_male5000mt, :country),
        best_in_place(start_male5000mt, :male5000mtStart_id),
   ]
     end
  end
 
  def count
    StartMale5000mt.count
  end

  def total_entries
    start_male5000mts.total_count
    # will_paginate
    # start_male5000mts.total_entries
  end

  def start_male5000mts
    @start_male5000mts ||= fetch_start_male5000mts
  end

  def fetch_start_male5000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male5000mts = StartMale5000mt.page(page).per_page(per_page)
    start_male5000mts = StartMale5000mt.order("#{sort_column} #{sort_direction}")
    start_male5000mts = start_male5000mts.page(page).per(per_page)
    start_male5000mts = start_male5000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male5000mtStart_id)
  end

end