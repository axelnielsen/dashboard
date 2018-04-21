class MaleDiscusThrowsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male_discus_throws.map do |male_discus_throw|
      [ 
        best_in_place(male_discus_throw, :number),
        best_in_place(male_discus_throw, :name),
        best_in_place(male_discus_throw, :an),
        best_in_place(male_discus_throw, :club),
        best_in_place(male_discus_throw, :region),
        best_in_place(male_discus_throw, :first),
        best_in_place(male_discus_throw, :second),
        best_in_place(male_discus_throw, :third),
        best_in_place(male_discus_throw, :fourth),
        best_in_place(male_discus_throw, :fifth),
        best_in_place(male_discus_throw, :sixth),
        best_in_place(male_discus_throw, :achievement),
        best_in_place(male_discus_throw, :place),
   ]

 end
  end
 
  def count
    MaleDiscusThrow.count
  end

  def total_entries
    male_discus_throws.total_count
    # will_paginate
    # male_discus_throws.total_entries
  end

  def male_discus_throws
    @male_discus_throws ||= fetch_male_discus_throws
  end

  def fetch_male_discus_throws
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_discus_throws = MaleDiscusThrow.page(page).per_page(per_page)
    male_discus_throws = MaleDiscusThrow.order("#{sort_column} #{sort_direction}")
    male_discus_throws = male_discus_throws.page(page).per(per_page)
    male_discus_throws = male_discus_throws.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( number name an club region first second third fourth fifth sixth achievement place )
  end
 
end