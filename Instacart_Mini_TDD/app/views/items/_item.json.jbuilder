json.extract! item, :id, :description, :price, :looseweight, :warehouse_id, :created_at, :updated_at
json.url item_url(item, format: :json)
