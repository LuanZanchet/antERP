json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :cpnj, :phone, :adress_id
  json.url supplier_url(supplier, format: :json)
end
