class JumpsDatatable < ApplicationDatatable
  delegate :edit_jump_path, to: :@view

  private
def data
    jumps.map do |jump|
      [].tap do |column|
        column << jump.number
        column << jump.name
        column << jump.an
        column << jump.club
        column << jump.country
        column << jump.first
        column << jump.vvFirst
        column << jump.seconnd
        column << jump.vvSecond
        column << jump.third
        column << jump.vvThird
        column << jump.op
        column << jump.fourth
        column << jump.vvFourth
        column << jump.fift
        column << jump.vvFifth
        column << jump.sixth
        column << jump.vvSixth
        column << jump.achievement
        column << jump.place

        links = []
        links << link_to('Show', jump)
        links << link_to('Edit', edit_jump_path(jump))
        links << link_to('Destroy', jump, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
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