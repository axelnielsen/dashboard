class JumpFemalesDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
   def data
    jump_females.map do |jumpFemale|
      [ 
        
        best_in_place(jumpFemale, :number),
        best_in_place(jumpFemale, :id),
        best_in_place(jumpFemale, :name),
        best_in_place(jumpFemale, :an),
        best_in_place(jumpFemale, :club),
        best_in_place(jumpFemale, :reg),
        best_in_place(jumpFemale, :country),
        best_in_place(jumpFemale, :first),
        best_in_place(jumpFemale, :vvFirst),
        best_in_place(jumpFemale, :seconnd),
        best_in_place(jumpFemale, :vvSecond),
        best_in_place(jumpFemale, :third),
        best_in_place(jumpFemale, :vvThird),
        best_in_place(jumpFemale, :op),
        best_in_place(jumpFemale, :fourth),
        best_in_place(jumpFemale, :vvFourth),
        best_in_place(jumpFemale, :fift),
        best_in_place(jumpFemale, :vvFifth),
        best_in_place(jumpFemale, :sixth),
        best_in_place(jumpFemale, :vvSixth),
        best_in_place(jumpFemale, :achievement),
        best_in_place(jumpFemale, :place)
      ]
     end
  end
 
  def count
    JumpFemale.count
  end

  def total_entries
    jump_females.total_count
    # will_paginate
    # jump_females.total_entries
  end

  def jump_females
    @jump_females ||= fetch_jump_females
  end

  def fetch_jump_females
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # jump_females = JumpFemale.page(page).per_page(per_page)
    jump_females = JumpFemale.order("#{sort_column} #{sort_direction}")
    jump_females = jump_females.page(page).per(per_page)
    jump_females = jump_females.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(number name an club country first vvFirst seconnd vvSecond third vvThird op fourth vvFourth fift vvFifth sixth vvSixth achievement place )
  end

end