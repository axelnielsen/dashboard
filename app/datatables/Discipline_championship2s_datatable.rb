class Discipline_championship2sDatatable< ApplicationDatatable
  delegate :edit_discipline_championship2_path, to: :@view

  private

  def data
    discipline_championship2s.map do |discipline_championship2|
      [].tap do |column| 
        column << discipline_championship2.name       
        column << discipline_championship2.sex        

        links = []
        links << link_to('Show', discipline_championship2)
        links << link_to('Edit', edit_discipline_championship2_path(discipline_championship2))
        links << link_to('Destroy', discipline_championship2, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Discipline_championship2.count
  end

  def total_entries
    discipline_championship2s.total_count
    # will_paginate
    # discipline_championship2s.total_entries
  end

  def discipline_championship2s
    @discipline_championship2s ||= fetch_discipline_championship2s
  end

  def fetch_discipline_championship2s
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # discipline_championship2s = Discipline_championship2.page(page).per_page(per_page)
    discipline_championship2s = Discipline_championship2.order("#{sort_column} #{sort_direction}")
    discipline_championship2s = discipline_championship2s.page(page).per(per_page)
    discipline_championship2s = discipline_championship2s.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name sex)
  end

end