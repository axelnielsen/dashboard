class AthletesDatatable < ApplicationDatatable
  delegate :edit_athlete_path, to: :@view

  private

  def data
    #example
    athletes.map do |athlete|
      [].tap do |column|
        column << athlete.names
        column << athlete.surnames
        column << athlete.birthdate
        column << athlete.club.name
        column << athlete.region.name

        links = []
        links << link_to('VER', athlete)
        column << links.join(' | ')
      end
    end
  end

  def count
    Athlete.count
  end

  def total_entries
    athletes.total_count
    # will_paginate
    # athletes.total_entries
  end

  def athletes
    @athletes ||= fetch_athletes
  end

  def fetch_athletes
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # athletes = Athlete.page(page).per_page(per_page)
    athletes = Athlete.order("#{sort_column} #{sort_direction}")
    athletes = athletes.page(page).per(per_page)
    if params[:club_id]
    athletes = athletes.where(club_id: params[:club_id])
    end
    athletes = athletes.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(names surnames birthdate club_id region_id)
  end

end