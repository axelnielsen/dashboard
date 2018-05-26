class Track2sDatatable < ApplicationDatatable
  delegate :edit_track2_path, to: :@view

  private

  def data
    track2s.map do |track2|
      [].tap do |column| 
        column << track2.place       
        column << track2.achievement 
        column << track2.rail       
        column << track2.athlete 
        column << track2.club 
        column << track2.region 
        links = []
        links << link_to('Show', track2)
        links << link_to('Edit', edit_track2_path(track2))
        links << link_to('Destroy', client, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Track2.count
  end

  def total_entries
    track2s.total_count
    # will_paginate
    # clients.total_entries
  end

  def track2s
    @track2s ||= fetch_track2s
  end

  def fetch_track2s
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # clients = Client.page(page).per_page(per_page)
    track2s = Track2.order("#{sort_column} #{sort_direction}")
    track2s = track2s.page(page).per(per_page)
    track2s = track2s.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(place achievement rail athlete club region )
  end

end