json.extract! client, :id, :name, :lastname, :account, :created_at, :updated_at
json.url client_url(client, format: :json)
