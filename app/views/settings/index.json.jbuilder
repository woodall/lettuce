json.array!(@settings) do |setting|
  json.extract! setting, :id, :name, :delete_account, :user_id
  json.url setting_url(setting, format: :json)
end
