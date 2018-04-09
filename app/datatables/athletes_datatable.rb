class AthletesDatatable < ApplicationDatatable
  delegate :edit_athlete_path, to: :@view

  private

  def data
    athletes.map do |athlete|
      [].tap do |column|
        column << athlete.names
        column << athlete.surnames
        column << athlete.sex
        column << athlete.birthdate
        column << athlete.rut
        column << athlete.mail
        column << athlete.size
        column << athlete.height

        links = []
        links << link_to('Show', athlete)
        links << link_to('Edit', edit_athlete_path(athlete))
        links << link_to('Destroy', athlete, method: :delete, data: { confirm: 'Are you sure?' })
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
    athletes = athletes.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(names surnames sex birthdate rut mail size height)
  end

end