json.array!(@houses) do |house|
  json.extract! house, :id, :hse_type, :price, :location, :description, :status
  json.url house_url(house, format: :json)
end
