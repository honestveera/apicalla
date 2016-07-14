json.array!(@logins) do |login|
  json.extract! login, :id, :username, :email, :password, :conformpassword, :mobilenumber
  json.url login_url(login, format: :json)
end
