class StartMaleThrowingDiscsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_male_throwing_discs.map do |start_male_throwing_disc|
      [ 
        best_in_place(start_male_throwing_disc, :place),
        best_in_place(start_male_throwing_disc, :achievement),
        best_in_place(start_male_throwing_disc, :rail),
        best_in_place(start_male_throwing_disc, :number),
        best_in_place(start_male_throwing_disc, :athlete),
        best_in_place(start_male_throwing_disc, :an),
        best_in_place(start_male_throwing_disc, :club),
        best_in_place(start_male_throwing_disc, :region),
        best_in_place(start_male_throwing_disc, :country),
        best_in_place(start_male_throwing_disc, :maleThrowingDiscHead_id ),
   ]
     end
  end
 
  def count
    StartMaleThrowingDisc.count
  end

  def total_entries
    start_male_throwing_discs.total_count
    # will_paginate
    # start_male_throwing_discs.total_entries
  end

  def start_male_throwing_discs
    @start_male_throwing_discs ||= fetch_start_male_throwing_discs
  end

  def fetch_start_male_throwing_discs
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_male_throwing_discs = StartMaleThrowingDisc.page(page).per_page(per_page)
    start_male_throwing_discs = StartMaleThrowingDisc.order("#{sort_column} #{sort_direction}")
    start_male_throwing_discs = start_male_throwing_discs.page(page).per(per_page)
    start_male_throwing_discs = start_male_throwing_discs.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country maleThrowingDiscHead_id )
  end

end