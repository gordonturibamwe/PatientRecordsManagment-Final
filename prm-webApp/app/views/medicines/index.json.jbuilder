json.array!(@medicines) do |medicine|
  json.extract! medicine, :id, :name, :gram, :prescription, :refill, :summary_id
  json.url medicine_url(medicine, format: :json)
end
