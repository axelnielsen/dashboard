class Female3000mtsobstaclesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
   
    female3000mtsobstacles.map do |female3000mtsobstacle|
      [ 
        best_in_place(female3000mtsobstacle, :place),
        best_in_place(female3000mtsobstacle, :achievement),
        best_in_place(female3000mtsobstacle, :rail),
        best_in_place(female3000mtsobstacle, :number),
        best_in_place(female3000mtsobstacle, :athlete),
        best_in_place(female3000mtsobstacle, :an),
        best_in_place(female3000mtsobstacle, :club),
        best_in_place(female3000mtsobstacle, :region),
        best_in_place(female3000mtsobstacle, :country),
        best_in_place(female3000mtsobstacle, :female3000mtsobstacleHead_id),
   ]
     end
  end
 
  def count
    Female3000mtsobstacle.count
  end

  def total_entries
    female3000mtsobstacles.total_count
    # will_paginate
    # female3000mtsobstacles.total_entries
  end

  def female3000mtsobstacles
    @female3000mtsobstacles ||= fetch_female3000mtsobstacles
  end

  def fetch_female3000mtsobstacles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # female3000mtsobstacles = Female3000mtsobstacle.page(page).per_page(per_page)
    female3000mtsobstacles = Female3000mtsobstacle.order("#{sort_column} #{sort_direction}")
    female3000mtsobstacles = female3000mtsobstacles.page(page).per(per_page)
    female3000mtsobstacles = female3000mtsobstacles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w( place achievement rail number athlete an club region country  female3000mtsobstacleHead_id)
  end

end