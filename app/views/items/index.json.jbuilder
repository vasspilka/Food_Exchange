json.array!(@items) do |item|
  json.extract! item, :id, :donation_id, :title, :details, :type, :expiration_date, :image
  json.url item_url(item, format: :json)
end
