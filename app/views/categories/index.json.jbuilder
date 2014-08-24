json.array!(@categories) do |category|
  json.extract! category, :id, :category_name, :updated_user_id
  json.url category_url(category, format: :json)
end
