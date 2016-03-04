json.array!(@callbacks) do |callback|
  json.extract! callback, :id, :civilite, :nom, :prenom, :phone, :email, :time
  json.url callback_url(callback, format: :json)
end
