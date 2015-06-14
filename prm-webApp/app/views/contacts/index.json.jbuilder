json.array!(@contacts) do |contact|
  json.extract! contact, :id, :mobilephone, :homephone, :street, :city, :state, :country, :zipcode, :patient_id
  json.url contact_url(contact, format: :json)
end
