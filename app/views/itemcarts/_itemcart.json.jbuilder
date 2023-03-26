json.extract! itemcart, :id, :qnty, :size, :product_id, :merchant_id, :created_at, :updated_at
json.url itemcart_url(itemcart, format: :json)
