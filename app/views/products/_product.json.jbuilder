json.extract! product, :id, :userid, :name, :price, :status, :categorie_id, :image, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
