class Male5000mtsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male5000mts.map do |male5000mt|
      [ 
        best_in_place(male5000mt, :place),
        best_in_place(male5000mt, :achievement),
        best_in_place(male5000mt, :rail),
        best_in_place(male5000mt, :number),
        best_in_place(male5000mt, :athlete),
        best_in_place(male5000mt, :an),
        best_in_place(male5000mt, :club),
        best_in_place(male5000mt, :region),
        best_in_place(male5000mt, :country),
        best_in_place(male5000mt, :male5000mtsHead_id),
   ]
     end
  end
 
  def count
    Male5000mt.count
  end

  def total_entries
    male5000mts.total_count
    # will_paginate
    # male5000mts.total_entries
  end

  def male5000mts
    @male5000mts ||= fetch_male5000mts
  end

  def fetch_male5000mts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male5000mts = StartMale5000mt.page(page).per_page(per_page)
    male5000mts = Male5000mt.order("#{sort_column} #{sort_direction}")
    male5000mts = male5000mts.page(page).per(per_page)
    male5000mts = male5000mts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male5000mtsHead_id)
  end

end