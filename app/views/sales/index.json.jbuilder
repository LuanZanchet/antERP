json.array!(@sales) do |sale|
  json.extract! sale, :id, :client_id, :seller_id, :product_id, :total
  json.url sale_url(sale, format: :json)
end
