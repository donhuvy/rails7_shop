json.extract! product, :id, :product_name, :product_type, :size_width, :size_height, :size_length, :unit_of_size, :manufactured_date, :experied_date, :brand_id, :color, :sku, :created_at, :updated_at
json.url product_url(product, format: :json)
