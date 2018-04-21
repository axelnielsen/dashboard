class Male3000mtsobstaclesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    male3000mtsobstacles.map do |male3000mtsobstacle|
      [ 
        best_in_place(male3000mtsobstacle, :place),
        best_in_place(male3000mtsobstacle, :achievement),
        best_in_place(male3000mtsobstacle, :rail),
        best_in_place(male3000mtsobstacle, :number),
        best_in_place(male3000mtsobstacle, :athlete),
        best_in_place(male3000mtsobstacle, :an),
        best_in_place(male3000mtsobstacle, :club),
        best_in_place(male3000mtsobstacle, :region),
        best_in_place(male3000mtsobstacle, :country),
        best_in_place(male3000mtsobstacle, :male3000mtsobstacleHead_id),
   ]
     end
  end
 
  def count
    Male3000mtsobstacle.count
  end

  def total_entries
    male3000mtsobstacles.total_count
    # will_paginate
    # male3000mtsobstacles.total_entries
  end

  def male3000mtsobstacles
    @male3000mtsobstacles ||= fetch_male3000mtsobstacles
  end

  def fetch_male3000mtsobstacles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # male3000mtsobstacles = StartMale4x400mt.page(page).per_page(per_page)
    male3000mtsobstacles = Male3000mtsobstacle.order("#{sort_column} #{sort_direction}")
    male3000mtsobstacles = male3000mtsobstacles.page(page).per(per_page)
    male3000mtsobstacles = male3000mtsobstacles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  male3000mtsobstacleHead_id)
  end

end