json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :name, :prescription, :gram, :refill, :info, :patient_id
  json.url medicine_url(medicine, format: :json)
end
