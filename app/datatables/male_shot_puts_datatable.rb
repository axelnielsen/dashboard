class MaleShotPutsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male_shot_puts.map do |male_shot_put|
      [ 
        best_in_place(male_shot_put, :number),
        best_in_place(male_shot_put, :name),
        best_in_place(male_shot_put, :an),
        best_in_place(male_shot_put, :club),
        best_in_place(male_shot_put, :region),
        best_in_place(male_shot_put, :first),
        best_in_place(male_shot_put, :second),
        best_in_place(male_shot_put, :third),
        best_in_place(male_shot_put, :fourth),
        best_in_place(male_shot_put, :fifth),
        best_in_place(male_shot_put, :sixth),
        best_in_place(male_shot_put, :achievement),
        best_in_place(male_shot_put, :place),
   ]

 end
  end
 
  def count
    MaleShotPut.count
  end

  def total_entries
    male_shot_puts.total_count
    # will_paginate
    # male_shot_puts.total_entries
  end

  def male_shot_puts
    @male_shot_puts ||= fetch_male_shot_puts
  end

  def fetch_male_shot_puts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male_shot_puts = MaleShotPut.page(page).per_page(per_page)
    male_shot_puts = MaleShotPut.order("#{sort_column} #{sort_direction}")
    male_shot_puts = male_shot_puts.page(page).per(per_page)
    male_shot_puts = male_shot_puts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( number name an club region first second third fourth fifth sixth achievement place )
  end
 
end