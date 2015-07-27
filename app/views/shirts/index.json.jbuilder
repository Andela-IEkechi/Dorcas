json.array!(@shirts) do |shirt|
  json.extract! shirt, :id, :category, :name, :description, :brand, :sex, :size_fit, :pricing
  json.url shirt_url(shirt, format: :json)
end
