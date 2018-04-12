class ThrowingsDatatable < ApplicationDatatable
  delegate :edit_throwing_path, to: :@view

  private
def data
    throwings.map do |throwing|
      [].tap do |column|
        column << throwing.number
        column << throwing.name
        column << throwing.an
        column << throwing.club
        column << throwing.country
        column << throwing.first
        column << throwing.seconnd
        column << throwing.third
        column << throwing.op
        column << throwing.fourth
        column << throwing.fift
        column << throwing.sixth
        column << throwing.achievement
        column << throwing.place

        links = []
        links << link_to('Show', throwing)
        links << link_to('Edit', edit_throwing_path(throwing))
        links << link_to('Destroy', throwing, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Throwing.count
  end

  def total_entries
    throwings.total_count
    # will_paginate
    # throwings.total_entries
  end

  def throwings
    @throwings ||= fetch_throwings
  end

  def fetch_throwings
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # throwings = Throwing.page(page).per_page(per_page)
    throwings = Throwing.order("#{sort_column} #{sort_direction}")
    throwings = throwings.page(page).per(per_page)
    throwings = throwings.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(number name an club country first  seconnd  third  op fourth  fift  sixth  achievement place )
  end

end