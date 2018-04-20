class StartMale400mtshudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male400mtshudrles.map do |start_male400mtshudrle|
      [ 
        best_in_place(start_male400mtshudrle, :place),
        best_in_place(start_male400mtshudrle, :achievement),
        best_in_place(start_male400mtshudrle, :rail),
        best_in_place(start_male400mtshudrle, :number),
        best_in_place(start_male400mtshudrle, :athlete),
        best_in_place(start_male400mtshudrle, :an),
        best_in_place(start_male400mtshudrle, :club),
        best_in_place(start_male400mtshudrle, :region),
        best_in_place(start_male400mtshudrle, :country),
        best_in_place(start_male400mtshudrle, :male400mtshudrleStart_id),
   ]
     end
  end
 
  def count
    StartMale400mtshudrle.count
  end

  def total_entries
    start_male400mtshudrles.total_count
    # will_paginate
    # start_male400mtshudrles.total_entries
  end

  def start_male400mtshudrles
    @start_male400mtshudrles ||= fetch_start_male400mtshudrles
  end

  def fetch_start_male400mtshudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male400mtshudrles = StartMale400mtshudrle.page(page).per_page(per_page)
    start_male400mtshudrles = StartMale400mtshudrle.order("#{sort_column} #{sort_direction}")
    start_male400mtshudrles = start_male400mtshudrles.page(page).per(per_page)
    start_male400mtshudrles = start_male400mtshudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male400mtshudrleStart_id)
  end

end