class StartMaleDiscusThrowsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male_discus_throws.map do |start_male_discus_throw|
      [ 
        best_in_place(start_male_discus_throw, :place),
        best_in_place(start_male_discus_throw, :achievement),
        best_in_place(start_male_discus_throw, :rail),
        best_in_place(start_male_discus_throw, :number),
        best_in_place(start_male_discus_throw, :athlete),
        best_in_place(start_male_discus_throw, :an),
        best_in_place(start_male_discus_throw, :club),
        best_in_place(start_male_discus_throw, :region),
        best_in_place(start_male_discus_throw, :country),
        best_in_place(start_male_discus_throw, :male_discus_throwStart_id),
   ]
     end
  end
 
  def count
    StartMaleDiscusThrow.count
  end

  def total_entries
    start_male_discus_throws.total_count
    # will_paginate
    # start_male_discus_throws.total_entries
  end

  def start_male_discus_throws
    @start_male_discus_throws ||= fetch_start_male_discus_throws
  end

  def fetch_start_male_discus_throws
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male_discus_throws = StartMaleDiscusThrow.page(page).per_page(per_page)
    start_male_discus_throws = StartMaleDiscusThrow.order("#{sort_column} #{sort_direction}")
    start_male_discus_throws = start_male_discus_throws.page(page).per(per_page)
    start_male_discus_throws = start_male_discus_throws.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country male_discus_throwStart_id)
  end

end