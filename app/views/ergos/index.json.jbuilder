json.array!(@ergos) do |ergo|
  json.extract! ergo, :id, :description, :split, :time, :rate, :distance, :hr, :notes
  json.url ergo_url(ergo, format: :json)
end
