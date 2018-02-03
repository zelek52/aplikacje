json.extract! user, :id, :user_id, :name_public, :login, :password, :last_name, :first_name, :email, :address, :phone_nr, :joined_date, :last_visit, :created_at, :updated_at
json.url user_url(user, format: :json)
