json.extract! user, :id, :identity, :name, :last_name, :phone, :user_name, :password_digest, :birth_date, :email, :active, :created_at, :updated_at
json.url user_url(user, format: :json)