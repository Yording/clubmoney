json.extract! state, :id, :state, :description, :created_at, :updated_at
json.url state_url(state, format: :json)