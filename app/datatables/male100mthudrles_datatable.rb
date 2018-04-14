class Male100mthudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male100mthudrles.map do |male100mthudrle|
      [ 
        best_in_place(male100mthudrle, :place),
        best_in_place(male100mthudrle, :achievement),
        best_in_place(male100mthudrle, :rail),
        best_in_place(male100mthudrle, :number),
        best_in_place(male100mthudrle, :athlete),
        best_in_place(male100mthudrle, :an),
        best_in_place(male100mthudrle, :club),
        best_in_place(male100mthudrle, :region),
        best_in_place(male100mthudrle, :country),
        best_in_place(male100mthudrle, :male100mthudrleHead_id),
   ]
     end
  end
 
  def count
    Male100mthudrle.count
  end

  def total_entries
    male100mthudrles.total_count
    # will_paginate
    # male100mthudrles.total_entries
  end

  def male100mthudrles
    @male100mthudrles ||= fetch_male100mthudrles
  end

  def fetch_male100mthudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male100mthudrles = Male100mthudrle.page(page).per_page(per_page)
    male100mthudrles = Male100mthudrle.order("#{sort_column} #{sort_direction}")
    male100mthudrles = male100mthudrles.page(page).per(per_page)
    male100mthudrles = male100mthudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male100mthudrleHead_id)
  end

end