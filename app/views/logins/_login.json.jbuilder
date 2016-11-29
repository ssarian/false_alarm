json.extract! login, :id, :loginDateTime, :fkUserKey, :created_at, :updated_at
json.url login_url(login, format: :json)