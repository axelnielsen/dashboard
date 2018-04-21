class Male110mtshudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male110mtshudrles.map do |male110mtshudrle|
      [ 
        best_in_place(male110mtshudrle, :place),
        best_in_place(male110mtshudrle, :achievement),
        best_in_place(male110mtshudrle, :rail),
        best_in_place(male110mtshudrle, :number),
        best_in_place(male110mtshudrle, :athlete),
        best_in_place(male110mtshudrle, :an),
        best_in_place(male110mtshudrle, :club),
        best_in_place(male110mtshudrle, :region),
        best_in_place(male110mtshudrle, :country),
        best_in_place(male110mtshudrle, :male110mtshudrleHead_id),
   ]
     end
  end
 
  def count
    Male110mtshudrle.count
  end

  def total_entries
    male110mtshudrles.total_count
    # will_paginate
    # male110mtshudrles.total_entries
  end

  def male110mtshudrles
    @male110mtshudrles ||= fetch_male110mtshudrles
  end

  def fetch_male110mtshudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male110mtshudrles = StartMale4x400mt.page(page).per_page(per_page)
    male110mtshudrles = Male110mtshudrle.order("#{sort_column} #{sort_direction}")
    male110mtshudrles = male110mtshudrles.page(page).per(per_page)
    male110mtshudrles = male110mtshudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male110mtshudrleHead_id)
  end

end