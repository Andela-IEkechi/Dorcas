json.array!(@orders) do |order|
  json.extract! order, :id, :shirt_id, :user_id, :payment_method
  json.url order_url(order, format: :json)
end
