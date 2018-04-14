class StartFemaleJavelinsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female_javelins.map do |start_female_javelin|
      [ 
        best_in_place(start_female_javelin, :place),
        best_in_place(start_female_javelin, :achievement),
        best_in_place(start_female_javelin, :rail),
        best_in_place(start_female_javelin, :number),
        best_in_place(start_female_javelin, :athlete),
        best_in_place(start_female_javelin, :an),
        best_in_place(start_female_javelin, :club),
        best_in_place(start_female_javelin, :region),
        best_in_place(start_female_javelin, :country),
        best_in_place(start_female_javelin, :femaleJavelinHead_id ),
   ]
     end
  end
 
  def count
    StartFemaleJavelin.count
  end

  def total_entries
    start_female_javelins.total_count
    # will_paginate
    # start_female_javelins.total_entries
  end

  def start_female_javelins
    @start_female_javelins ||= fetch_start_female_javelins
  end

  def fetch_start_female_javelins
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female_javelins = StartFemaleJavelin.page(page).per_page(per_page)
    start_female_javelins = StartFemaleJavelin.order("#{sort_column} #{sort_direction}")
    start_female_javelins = start_female_javelins.page(page).per(per_page)
    start_female_javelins = start_female_javelins.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femaleJavelinHead_id )
  end

end