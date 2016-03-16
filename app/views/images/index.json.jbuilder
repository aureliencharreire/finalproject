json.array!(@images) do |image|
  json.extract! image, :id, :image, :program_id, :carroussel
  json.url image_url(image, format: :json)
end
