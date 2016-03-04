json.array!(@program_clients) do |program_client|
  json.extract! program_client, :id
  json.url program_client_url(program_client, format: :json)
end
