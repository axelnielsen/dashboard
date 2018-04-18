class MaleJavelinesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male_javelines.map do |male_javeline|
      [ 
        best_in_place(male_javeline, :number),
        best_in_place(male_javeline, :name),
        best_in_place(male_javeline, :an),
        best_in_place(male_javeline, :club),
        best_in_place(male_javeline, :region),
        best_in_place(male_javeline, :first),
        best_in_place(male_javeline, :second),
        best_in_place(male_javeline, :third),
        best_in_place(male_javeline, :fourth),
        best_in_place(male_javeline, :fifth),
        best_in_place(male_javeline, :sixth),
        best_in_place(male_javeline, :achievement),
        best_in_place(male_javeline, :place),
   ]

 end
  end
 
  def count
    MaleJaveline.count
  end

  def total_entries
    male_javelines.total_count
    # will_paginate
    # male_javelines.total_entries
  end

  def male_javelines
    @male_javelines ||= fetch_male_javelines
  end

  def fetch_male_javelines
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_javelines = FemaleJaveline.page(page).per_page(per_page)
    male_javelines = MaleJaveline.order("#{sort_column} #{sort_direction}")
    male_javelines = male_javelines.page(page).per(per_page)
    male_javelines = male_javelines.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( number name an club region first second third fourth fifth sixth achievement place )
  end
 
end