json.array!(@flights) do |flight|
  json.extract! flight, :id, :one, :two, :three, :four, :five
  json.url flight_url(flight, format: :json)
end
