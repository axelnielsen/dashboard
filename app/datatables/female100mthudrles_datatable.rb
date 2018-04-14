class Female100mthudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female100mthudrles.map do |female100mthudrle|
      [ 
        best_in_place(female100mthudrle, :place),
        best_in_place(female100mthudrle, :achievement),
        best_in_place(female100mthudrle, :rail),
        best_in_place(female100mthudrle, :number),
        best_in_place(female100mthudrle, :athlete),
        best_in_place(female100mthudrle, :an),
        best_in_place(female100mthudrle, :club),
        best_in_place(female100mthudrle, :region),
        best_in_place(female100mthudrle, :country),
        best_in_place(female100mthudrle, :female100mthudrlesHead_id),
   ]
     end
  end
 
  def count
    Female100mthudrle.count
  end

  def total_entries
    female100mthudrles.total_count
    # will_paginate
    # female100mthudrles.total_entries
  end

  def female100mthudrles
    @female100mthudrles ||= fetch_female100mthudrles
  end

  def fetch_female100mthudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female100mthudrles = Female100mthudrle.page(page).per_page(per_page)
    female100mthudrles = Female100mthudrle.order("#{sort_column} #{sort_direction}")
    female100mthudrles = female100mthudrles.page(page).per(per_page)
    female100mthudrles = female100mthudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country female100mthudrlesHead_id)
  end

end