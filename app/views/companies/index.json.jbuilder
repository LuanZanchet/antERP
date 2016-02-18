json.array!(@companies) do |company|
  json.extract! company, :id, :name, :cnpj, :phone, :branch, :adress_id
  json.url company_url(company, format: :json)
end
