class Female110mtshudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female110mtshudrles.map do |female110mtshudrle|
      [ 
        best_in_place(female110mtshudrle, :place),
        best_in_place(female110mtshudrle, :achievement),
        best_in_place(female110mtshudrle, :rail),
        best_in_place(female110mtshudrle, :number),
        best_in_place(female110mtshudrle, :athlete),
        best_in_place(female110mtshudrle, :an),
        best_in_place(female110mtshudrle, :club),
        best_in_place(female110mtshudrle, :region),
        best_in_place(female110mtshudrle, :country),
        best_in_place(female110mtshudrle, :female110mtshudrleHead_id),
   ]
     end
  end
 
  def count
    Female110mtshudrle.count
  end

  def total_entries
    female110mtshudrles.total_count
    # will_paginate
    # female110mtshudrles.total_entries
  end

  def female110mtshudrles
    @female110mtshudrles ||= fetch_female110mtshudrles
  end

  def fetch_female110mtshudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female110mtshudrles = Female110mtshudrle.page(page).per_page(per_page)
    female110mtshudrles = Female110mtshudrle.order("#{sort_column} #{sort_direction}")
    female110mtshudrles = female110mtshudrles.page(page).per(per_page)
    female110mtshudrles = female110mtshudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female110mtshudrleHead_id)
  end

end