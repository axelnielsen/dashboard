class Male400mthudrlesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male400mthudrles.map do |male400mthudrle|
      [ 
        best_in_place(male400mthudrle, :place),
        best_in_place(male400mthudrle, :achievement),
        best_in_place(male400mthudrle, :rail),
        best_in_place(male400mthudrle, :number),
        best_in_place(male400mthudrle, :athlete),
        best_in_place(male400mthudrle, :an),
        best_in_place(male400mthudrle, :club),
        best_in_place(male400mthudrle, :region),
        best_in_place(male400mthudrle, :country),
        best_in_place(male400mthudrle, :male400mthudrleHead_id),
   ]
     end
  end
 
  def count
    Male400mthudrle.count
  end

  def total_entries
    male400mthudrles.total_count
    # will_paginate
    # male400mthudrles.total_entries
  end

  def male400mthudrles
    @male400mthudrles ||= fetch_male400mthudrles
  end

  def fetch_male400mthudrles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male400mthudrles = Male400mthudrle.page(page).per_page(per_page)
    male400mthudrles = Male400mthudrle.order("#{sort_column} #{sort_direction}")
    male400mthudrles = male400mthudrles.page(page).per(per_page)
    male400mthudrles = male400mthudrles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male400mthudrleHead_id)
  end

end