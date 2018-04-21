class StartMale110mtshudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male110mtshudrles.map do |start_male110mtshudrle|
      [ 
        best_in_place(start_male110mtshudrle, :place),
        best_in_place(start_male110mtshudrle, :achievement),
        best_in_place(start_male110mtshudrle, :rail),
        best_in_place(start_male110mtshudrle, :number),
        best_in_place(start_male110mtshudrle, :athlete),
        best_in_place(start_male110mtshudrle, :an),
        best_in_place(start_male110mtshudrle, :club),
        best_in_place(start_male110mtshudrle, :region),
        best_in_place(start_male110mtshudrle, :country),
        best_in_place(start_male110mtshudrle, :male110mtshudrleStart_id),
   ]
     end
  end
 
  def count
    StartMale110mtshudrle.count
  end

  def total_entries
    start_male110mtshudrles.total_count
    # will_paginate
    # start_male110mtshudrle.total_entries
  end

  def start_male110mtshudrles
    @start_male110mtshudrles ||= fetch_start_male110mtshudrles
  end

  def fetch_start_male110mtshudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male110mtshudrles = StartMale110mtshudrles.page(page).per_page(per_page)
    start_male110mtshudrles = StartMale110mtshudrle.order("#{sort_column} #{sort_direction}")
    start_male110mtshudrles = start_male110mtshudrles.page(page).per(per_page)
    start_male110mtshudrles = start_male110mtshudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  male110mtshudrleStart_id)
  end

end