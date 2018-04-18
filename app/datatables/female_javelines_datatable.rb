class FemaleJavelinesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female_javelines.map do |female_javeline|
      [ 
        best_in_place(female_javeline, :number),
        best_in_place(female_javeline, :name),
        best_in_place(female_javeline, :an),
        best_in_place(female_javeline, :club),
        best_in_place(female_javeline, :region),
        best_in_place(female_javeline, :first),
        best_in_place(female_javeline, :second),
        best_in_place(female_javeline, :third),
        best_in_place(female_javeline, :fourth),
        best_in_place(female_javeline, :fifth),
        best_in_place(female_javeline, :sixth),
        best_in_place(female_javeline, :achievement),
        best_in_place(female_javeline, :place),
   ]

 end
  end
 
  def count
    FemaleJaveline.count
  end

  def total_entries
    female_javelines.total_count
    # will_paginate
    # female_javelines.total_entries
  end

  def female_javelines
    @female_javelines ||= fetch_female_javelines
  end

  def fetch_female_javelines
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female_javelines = FemaleJaveline.page(page).per_page(per_page)
    female_javelines = FemaleJaveline.order("#{sort_column} #{sort_direction}")
    female_javelines = female_javelines.page(page).per(per_page)
    female_javelines = female_javelines.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( number name an club region first second third fourth fifth sixth achievement place )
  end
 
end