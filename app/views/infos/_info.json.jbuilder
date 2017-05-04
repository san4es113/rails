json.extract! info, :id, :birthday, :address, :latitude, :longitude, :email, :description, :user_id, :created_at, :updated_at
json.url info_url(info, format: :json)
