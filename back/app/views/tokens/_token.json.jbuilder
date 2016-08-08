json.extract! token, :id, :token, :name, :active, :number_of_requests, :created_at, :updated_at
json.url token_url(token, format: :json)