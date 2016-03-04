json.array!(@programs) do |program|
  json.extract! program, :id, :region, :departement, :city, :adress, :delivery, :bref, :strongpoints, :citydesc, :areadesc, :proximity, :tva, :immediatDelivery, :new, :pricedisplay
  json.url program_url(program, format: :json)
end
