class ClubsDatatable < ApplicationDatatable
  delegate :edit_club_path, to: :@view

  private
  def data
    clubs.map do |club|
      [].tap do |column|
        column << club.name
        column << club.region_id
   
        links = []
        links << link_to('VER', club)
        links << link_to('EDITAR', edit_club_path(club))
        links << link_to('ELIMINAR', club, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Club.count
  end

  def total_entries
    clubs.total_count
    # will_paginate
    # athletes.total_entries
  end

  def clubs
    @clubs ||= fetch_clubs
  end

  def fetch_clubs
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # athletes = Athlete.page(page).per_page(per_page)
    clubs = Club.order("#{sort_column} #{sort_direction}")
    clubs = clubs.page(page).per(per_page)
    clubs=clubs.where(region_id: params[:region_id])
    clubs = clubs.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name region_id)
  end

end