json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :cpf, :salario, :adress_id, :company_id
  json.url seller_url(seller, format: :json)
end
