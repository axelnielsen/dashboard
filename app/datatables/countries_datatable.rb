class CountriesDatatable < ApplicationDatatable
  delegate :edit_country_path, to: :@view

  private

  def data
    countries.map do |country|
      [].tap do |column| 
        column << country.name       
        column << country.flag        

        links = []
        links << link_to('Show', country)
        links << link_to('Edit', edit_country_path(country))
        links << link_to('Destroy', country, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Country.count
  end

  def total_entries
    countries.total_count
    # will_paginate
    # countries.total_entries
  end

  def countries
    @countries ||= fetch_countries
  end

  def fetch_countries
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # countries = Country.page(page).per_page(per_page)
    countries = Country.order("#{sort_column} #{sort_direction}")
    countries = countries.page(page).per(per_page)
    countries = countries.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name flag)
  end

end