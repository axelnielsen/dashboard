class ClientsDatatable < ApplicationDatatable
  delegate :edit_client_path, to: :@view

  private

  def data
    clients.map do |client|
      [].tap do |column| 
        column << client.name       
        column << client.lastame 
        column << client.account       

        links = []
        links << link_to('Show', client)
        links << link_to('Edit', edit_client_path(client))
        links << link_to('Destroy', client, method: :delete, data: { confirm: 'Are you sure?' })
        column << links.join(' | ')
      end
    end
  end

  def count
    Client.count
  end

  def total_entries
    clients.total_count
    # will_paginate
    # clients.total_entries
  end

  def clients
    @clients ||= fetch_clients
  end

  def fetch_clients
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    # will_paginate
    # clients = Client.page(page).per_page(per_page)
    clients = Client.order("#{sort_column} #{sort_direction}")
    clients = clients.page(page).per(per_page)
    clients = clients.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name lastname account)
  end

end