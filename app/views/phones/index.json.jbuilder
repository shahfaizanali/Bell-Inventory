json.array!(@phones) do |phone|
  json.extract! phone, :id, :company, :model, :quantity, :memory, :color, :remarks, :purchase_price
  json.url phone_url(phone, format: :json)
end
