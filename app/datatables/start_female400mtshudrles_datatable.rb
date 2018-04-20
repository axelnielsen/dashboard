class StartFemale400mtshudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female400mtshudrles.map do |start_female400mtshudrle|
      [ 
        best_in_place(start_female400mtshudrle, :place),
        best_in_place(start_female400mtshudrle, :achievement),
        best_in_place(start_female400mtshudrle, :rail),
        best_in_place(start_female400mtshudrle, :number),
        best_in_place(start_female400mtshudrle, :athlete),
        best_in_place(start_female400mtshudrle, :an),
        best_in_place(start_female400mtshudrle, :club),
        best_in_place(start_female400mtshudrle, :region),
        best_in_place(start_female400mtshudrle, :country),
        best_in_place(start_female400mtshudrle, :female400mtshudrleStart_id),
   ]
     end
  end
 
  def count
    StartFemale400mtshudrle.count
  end

  def total_entries
    start_female400mtshudrles.total_count
    # will_paginate
    # start_female400mtshudrles.total_entries
  end

  def start_female400mtshudrles
    @start_female400mtshudrles ||= fetch_start_female400mtshudrles
  end

  def fetch_start_female400mtshudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female400mtshudrles = StartFemale400mtshudrle.page(page).per_page(per_page)
    start_female400mtshudrles = StartFemale400mtshudrle.order("#{sort_column} #{sort_direction}")
    start_female400mtshudrles = start_female400mtshudrles.page(page).per(per_page)
    start_female400mtshudrles = start_female400mtshudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female400mtshudrleStart_id)
  end

end