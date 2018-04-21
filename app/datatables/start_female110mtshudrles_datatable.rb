class StartFemale110mtshudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female110mtshudrles.map do |start_female110mtshudrle|
      [ 
        best_in_place(start_female110mtshudrle, :place),
        best_in_place(start_female110mtshudrle, :achievement),
        best_in_place(start_female110mtshudrle, :rail),
        best_in_place(start_female110mtshudrle, :number),
        best_in_place(start_female110mtshudrle, :athlete),
        best_in_place(start_female110mtshudrle, :an),
        best_in_place(start_female110mtshudrle, :club),
        best_in_place(start_female110mtshudrle, :region),
        best_in_place(start_female110mtshudrle, :country),
        best_in_place(start_female110mtshudrle, :female110mtshudrleStart_id),
   ]
     end
  end
 
  def count
    StartFemale110mtshudrle.count
  end

  def total_entries
    start_female110mtshudrles.total_count
    # will_paginate
    # start_female110mtshudrles.total_entries
  end

  def start_female110mtshudrles
    @start_female110mtshudrles ||= fetch_start_female110mtshudrles
  end

  def fetch_start_female110mtshudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female110mtshudrles = StartFemale110mtshudrle.page(page).per_page(per_page)
    start_female110mtshudrles = StartFemale110mtshudrle.order("#{sort_column} #{sort_direction}")
    start_female110mtshudrles = start_female110mtshudrles.page(page).per(per_page)
    start_female110mtshudrles = start_female110mtshudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female110mtshudrleStart_id)
  end

end