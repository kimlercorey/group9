json.array!(@items) do |item|
  json.extract! item, :id, :title, :details, :category_id, :image
  json.url item_url(item, format: :json)
end
