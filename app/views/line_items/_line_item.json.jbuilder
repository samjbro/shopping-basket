json.extract! line_item, :id, :item_id, :basket_id, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)