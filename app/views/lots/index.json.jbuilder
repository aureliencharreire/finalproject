json.array!(@lots) do |lot|
  json.extract! lot, :id, :number, :type, :typo, :surface, :parking, :cave
  json.url lot_url(lot, format: :json)
end
