class StartMaleJavelinsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male_javelins.map do |start_male_javelin|
      [ 
        best_in_place(start_male_javelin, :place),
        best_in_place(start_male_javelin, :achievement),
        best_in_place(start_male_javelin, :rail),
        best_in_place(start_male_javelin, :number),
        best_in_place(start_male_javelin, :athlete),
        best_in_place(start_male_javelin, :an),
        best_in_place(start_male_javelin, :club),
        best_in_place(start_male_javelin, :region),
        best_in_place(start_male_javelin, :country),
        best_in_place(start_male_javelin, :maleJavelinHead_id),
   ]
     end
  end
 
  def count
    StartMaleJavelin.count
  end

  def total_entries
    start_male_javelins.total_count
    # will_paginate
    # start_male_javelins.total_entries
  end

  def start_male_javelins
    @start_male_javelins ||= fetch_start_male_javelins
  end

  def fetch_start_male_javelins
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male_javelins = StartMaleJavelin.page(page).per_page(per_page)
    start_male_javelins = StartMaleJavelin.order("#{sort_column} #{sort_direction}")
    start_male_javelins = start_male_javelins.page(page).per(per_page)
    start_male_javelins = start_male_javelins.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country maleJavelinHead_id)
  end

end