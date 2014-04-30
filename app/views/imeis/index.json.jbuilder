json.array!(@imeis) do |imei|
  json.extract! imei, :id, :imei_num, :phone_id
  json.url imei_url(imei, format: :json)
end
