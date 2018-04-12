class JumpsDatatable < ApplicationDatatable
  delegate :best_in_place, :edit_jump_path, to: :@view

  private
#def data
 #   jumps.map do |jump|
 #     [].tap do |column|
 #       column << jump.number
 #       column << jump.name
 #       column << jump.an
 #       column << jump.club
 #       column << jump.country
 #       column << jump.first
 #       column << jump.vvFirst
 #       column << jump.seconnd
 #       column << jump.vvSecond
 #       column << jump.third
 #       column << jump.vvThird
 #       column << jump.op
 #       column << jump.fourth
 #       column << jump.vvFourth
 #       column << jump.fift
 #       column << jump.vvFifth
 #       column << jump.sixth
  #      column << jump.vvSixth
 #       column << jump.achievement
 #       column << jump.place

 #       links = []
 #       links << link_to('Show', jump)
 #       links << link_to('Edit', edit_jump_path(jump))
 #       links << link_to('Destroy', jump, method: :delete, data: { confirm: 'Are you sure?' })
 #       column << links.join(' | ')
#      end
#    end
#  end



  def data
    jumps.map do |jump|
      [ 
        
        best_in_place(jump, :number),
        best_in_place(jump, :id),
        best_in_place(jump, :name),
        best_in_place(jump, :an),
        best_in_place(jump, :club),
        best_in_place(jump, :reg),
        best_in_place(jump, :country),
        best_in_place(jump, :first),
        best_in_place(jump, :vvFirst),
        best_in_place(jump, :seconnd),
        best_in_place(jump, :vvSecond),
        best_in_place(jump, :third),
        best_in_place(jump, :vvThird),
        best_in_place(jump, :op),
        best_in_place(jump, :fourth),
        best_in_place(jump, :vvFourth),
        best_in_place(jump, :fift),
        best_in_place(jump, :vvFifth),
        best_in_place(jump, :sixth),
        best_in_place(jump, :vvSixth),
        best_in_place(jump, :achievement),
        best_in_place(jump, :place)
      ]
     end
  end
 
  def count
    Jump.count
  end

  def total_entries
    jumps.total_count
    # will_paginate
    # jumps.total_entries
  end

  def jumps
    @jumps ||= fetch_jumps
  end

  def fetch_jumps
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # jumps = Jump.page(page).per_page(per_page)
    jumps = Jump.order("#{sort_column} #{sort_direction}")
    jumps = jumps.page(page).per(per_page)
    jumps = jumps.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(number name an club country first vvFirst seconnd vvSecond third vvThird op fourth vvFourth fift vvFifth sixth vvSixth achievement place )
  end

end