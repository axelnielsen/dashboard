class MaleHammerThrowsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male_hammer_throws.map do |male_hammer_throw|
      [ 
        best_in_place(male_hammer_throw, :number),
        best_in_place(male_hammer_throw, :name),
        best_in_place(male_hammer_throw, :an),
        best_in_place(male_hammer_throw, :club),
        best_in_place(male_hammer_throw, :region),
        best_in_place(male_hammer_throw, :first),
        best_in_place(male_hammer_throw, :second),
        best_in_place(male_hammer_throw, :third),
        best_in_place(male_hammer_throw, :fourth),
        best_in_place(male_hammer_throw, :fifth),
        best_in_place(male_hammer_throw, :sixth),
        best_in_place(male_hammer_throw, :achievement),
        best_in_place(male_hammer_throw, :place),
   ]

 end
  end
 
  def count
    MaleHammerThrow.count
  end

  def total_entries
    male_hammer_throws.total_count
    # will_paginate
    # male_hammer_throws.total_entries
  end

  def male_hammer_throws
    @male_hammer_throws ||= fetch_male_hammer_throws
  end

  def fetch_male_hammer_throws
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_hammer_throws = MaleHammerThrow.page(page).per_page(per_page)
    male_hammer_throws = MaleHammerThrow.order("#{sort_column} #{sort_direction}")
    male_hammer_throws = male_hammer_throws.page(page).per(per_page)
    male_hammer_throws = male_hammer_throws.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( number name an club region first second third fourth fifth sixth achievement place )
  end
 
end