json.array!(@sweeters) do |sweeter|
  json.extract! sweeter, :id, :username, :password_digest
  json.url sweeter_url(sweeter, format: :json)
end
