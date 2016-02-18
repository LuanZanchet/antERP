json.array!(@adresses) do |adress|
  json.extract! adress, :id, :street, :district, :number, :state, :city
  json.url adress_url(adress, format: :json)
end
