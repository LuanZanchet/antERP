json.array!(@products) do |product|
  json.extract! product, :id, :name, :quantity, :price, :supplier_id
  json.url product_url(product, format: :json)
end
