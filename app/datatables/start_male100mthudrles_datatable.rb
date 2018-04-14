class StartMale100mthudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male100mthudrles.map do |start_male100mthudrle|
      [ 
        best_in_place(start_male100mthudrle, :place),
        best_in_place(start_male100mthudrle, :achievement),
        best_in_place(start_male100mthudrle, :rail),
        best_in_place(start_male100mthudrle, :number),
        best_in_place(start_male100mthudrle, :athlete),
        best_in_place(start_male100mthudrle, :an),
        best_in_place(start_male100mthudrle, :club),
        best_in_place(start_male100mthudrle, :region),
        best_in_place(start_male100mthudrle, :country),
        best_in_place(start_male100mthudrle, :male100mthudresHead_id),
   ]
     end
  end
 
  def count
    StartMale100mthudrle.count
  end

  def total_entries
    start_male100mthudrles.total_count
    # will_paginate
    # start_male100mthudrles.total_entries
  end

  def start_male100mthudrles
    @start_male100mthudrles ||= fetch_start_male100mthudrles
  end

  def fetch_start_male100mthudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male100mthudrles = Startmale100mthudrle.page(page).per_page(per_page)
    start_male100mthudrles = StartMale100mthudrle.order("#{sort_column} #{sort_direction}")
    start_male100mthudrles = StartMale100mthudrle.page(page).per(per_page)
    start_male100mthudrles = start_male100mthudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male100mthudresHead_id)
  end

end