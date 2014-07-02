json.array!(@entries) do |entry|
  json.extract! entry, :id, :value, :description, :date
  json.url entry_url(entry, format: :json)
end
