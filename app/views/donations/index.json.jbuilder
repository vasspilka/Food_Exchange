json.array!(@donations) do |donation|
  json.extract! donation, :id, :title, :donator_id, :receiver_id, :description, :exchange_time, :exchange_address, :latitude, :longitude, :received, :valid_donation
  json.url donation_url(donation, format: :json)
end
