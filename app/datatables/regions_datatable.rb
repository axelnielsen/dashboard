class RegionsDatatable < ApplicationDatatable
  delegate :edit_region_path, to: :@view

  private
  def data
    regions.map do |region|
      [].tap do |column|
        column << region.name
   
        links = []
        links << link_to('VER', region)
        column << links.join(' | ')
      end
    end
  end

  def count
    Region.count
  end

  def total_entries
    regions.total_count
    # will_paginate
    # athletes.total_entries
  end

  def regions
    @regions ||= fetch_regions
  end

  def fetch_regions
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # athletes = Athlete.page(page).per_page(per_page)
    regions = Region.order("#{sort_column} #{sort_direction}")
    regions = regions.page(page).per(per_page)
    if params[:id]    
    regions = regions.where(id: params[:id])
    end
    regions = regions.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name)
  end

end