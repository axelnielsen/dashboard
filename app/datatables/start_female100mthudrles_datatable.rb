class StartFemale100mthudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female100mthudrles.map do |start_female100mthudrle|
      [ 
        best_in_place(start_female100mthudrle, :place),
        best_in_place(start_female100mthudrle, :achievement),
        best_in_place(start_female100mthudrle, :rail),
        best_in_place(start_female100mthudrle, :number),
        best_in_place(start_female100mthudrle, :athlete),
        best_in_place(start_female100mthudrle, :an),
        best_in_place(start_female100mthudrle, :club),
        best_in_place(start_female100mthudrle, :region),
        best_in_place(start_female100mthudrle, :country),
        best_in_place(start_female100mthudrle, :female100mthudresHead_id),
   ]
     end
  end
 
  def count
    StartFemale100mthudrle.count
  end

  def total_entries
    start_female100mthudrles.total_count
    # will_paginate
    # start_female100mthudrles.total_entries
  end

  def start_female100mthudrles
    @start_female100mthudrles ||= fetch_start_female100mthudrles
  end

  def fetch_start_female100mthudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female100mthudrles = StartFemale100mthudrle.page(page).per_page(per_page)
    start_female100mthudrles = StartFemale100mthudrle.order("#{sort_column} #{sort_direction}")
    start_female100mthudrles = start_female100mthudrles.page(page).per(per_page)
    start_female100mthudrles = start_female100mthudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female100mthudresHead_id)
  end

end