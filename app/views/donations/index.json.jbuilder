json.array!(@donations) do |donation|
  json.extract! donation, :id, :recieved, :donator_id, :reciever_id, :recieve_date, :trade_address
  json.url donation_url(donation, format: :json)
end
