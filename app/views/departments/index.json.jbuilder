json.array!(@departments) do |department|
  json.extract! department, :id, :code, :name, :region_code
  json.url department_url(department, format: :json)
end
