json.array!(@donations) do |donation|
  json.extract! donation, :id, :donator_id, :receiver_id, :exchange_time, :exchange_address, :latitude, :longitude, :received, :valid_donation
  json.url donation_url(donation, format: :json)
end
