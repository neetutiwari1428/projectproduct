json.extract! order, :id, :status, :merchant_id, :product_id, :cart_id, :created_at, :updated_at
json.url order_url(order, format: :json)
