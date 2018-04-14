class StartFemaleShotPutsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_shot_put_path, to: :@view

  private
   def data
   
    start_female_shot_puts.map do |start_female_shot_put|
      [ 
        best_in_place(start_female_shot_put, :place),
        best_in_place(start_female_shot_put, :achievement),
        best_in_place(start_female_shot_put, :rail),
        best_in_place(start_female_shot_put, :number),
        best_in_place(start_female_shot_put, :athlete),
        best_in_place(start_female_shot_put, :an),
        best_in_place(start_female_shot_put, :club),
        best_in_place(start_female_shot_put, :region),
        best_in_place(start_female_shot_put, :country),
        best_in_place(start_female_shot_put, :femaleShotPutHead_id ),
   ]
     end
  end
 
  def count
    StartFemaleShotPut.count
  end

  def total_entries
    start_female_shot_puts.total_count
    # will_paginate
    # start_female_shot_puts.total_entries
  end

  def start_female_shot_puts
    @start_female_shot_puts ||= fetch_start_female_shot_puts
  end

  def fetch_start_female_shot_puts
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female_shot_puts = StartFemaleShotPut.page(page).per_page(per_page)
    start_female_shot_puts = StartFemaleShotPut.order("#{sort_column} #{sort_direction}")
    start_female_shot_puts = start_female_shot_puts.page(page).per(per_page)
    start_female_shot_puts = start_female_shot_puts.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country femaleShotPutHead_id )
  end

end