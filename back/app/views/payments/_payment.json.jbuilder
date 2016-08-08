json.extract! payment, :id, :loan_id, :interest, :quota, :date, :created_at, :updated_at
json.url payment_url(payment, format: :json)