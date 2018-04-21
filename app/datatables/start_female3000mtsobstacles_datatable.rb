class StartFemale3000mtsobstaclesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    start_female3000mtsobstacles.map do |start_female3000mtsobstacle|
      [ 
        best_in_place(start_female3000mtsobstacle, :place),
        best_in_place(start_female3000mtsobstacle, :achievement),
        best_in_place(start_female3000mtsobstacle, :rail),
        best_in_place(start_female3000mtsobstacle, :number),
        best_in_place(start_female3000mtsobstacle, :athlete),
        best_in_place(start_female3000mtsobstacle, :an),
        best_in_place(start_female3000mtsobstacle, :club),
        best_in_place(start_female3000mtsobstacle, :region),
        best_in_place(start_female3000mtsobstacle, :country),
        best_in_place(start_female3000mtsobstacle, :female3000mtsobstacleStart_id),
   ]
     end
  end
 
  def count
    StartFemale3000mtsobstacle.count
  end

  def total_entries
    start_female3000mtsobstacles.total_count
    # will_paginate
    # start_female3000mtsobstacles.total_entries
  end

  def start_female3000mtsobstacles
    @start_female3000mtsobstacles ||= fetch_start_female3000mtsobstacles
  end

  def fetch_start_female3000mtsobstacles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # start_female3000mtsobstacles = StartFemale3000mtsobstacle.page(page).per_page(per_page)
    start_female3000mtsobstacles = StartFemale3000mtsobstacle.order("#{sort_column} #{sort_direction}")
    start_female3000mtsobstacles = start_female3000mtsobstacles.page(page).per(per_page)
    start_female3000mtsobstacles = start_female3000mtsobstacles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female3000mtsobstacleStart_id)
  end

end