json.array!(@items) do |item|
  json.extract! item, :id, :donation_id, :title, :photo, :expiration_date, :details
  json.url item_url(item, format: :json)
end
