class DisciplinesDatatable < ApplicationDatatable
  delegate :edit_discipline_path, to: :@view

  private

  def data
    disciplines.map do |discipline|
      [].tap do |column| 
        column << discipline.name       
                

        links = []
        links << link_to('Show', discipline)
        links << link_to('Edit', edit_discipline_path(discipline))
        links << link_to('Destroy', discipline, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Discipline.count
  end

  def total_entries
    disciplines.total_count
    # will_paginate
    # disciplines.total_entries
  end

  def disciplines
    @disciplines ||= fetch_disciplines
  end

  def fetch_disciplines
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # disciplines = Discipline.page(page).per_page(per_page)
    disciplines = Discipline.order("#{sort_column} #{sort_direction}")
    disciplines = disciplines.page(page).per(per_page)
    disciplines = disciplines.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name)
  end

end