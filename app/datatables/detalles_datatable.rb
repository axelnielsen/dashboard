class DetallesDatatable < ApplicationDatatable
  delegate :edit_detalle_path, to: :@view

  private

  def data
    detalles.map do |detalle|
      [].tap do |column| 
        column << detalle.serie 
        column << detalle.lugar       
        column << detalle.marca  
        column << detalle.pista   
        column << detalle.atleta   
        column << detalle.an   
        column << detalle.club      
        column << detalle.region     

        links = []
        links << link_to('Show', detalle)
        links << link_to('Edit', edit_detalle_path(detalle))
        links << link_to('Destroy', detalle, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Detalle.count
  end

  def total_entries
    detalles.total_count
    # will_paginate
    # detalles.total_entries
  end

  def detalles
    @detalles ||= fetch_detalles
  end

  def fetch_detalles
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # detalles = Detalle.page(page).per_page(per_page)
    detalles = Detalle.order("#{sort_column} #{sort_direction}")
    detalles = detalles.page(page).per(per_page)
    detalles = detalles.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(serie lugar marca pista atleta an club region)
  end

end