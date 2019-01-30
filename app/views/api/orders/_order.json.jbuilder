json.id order.id 
json.user_id order.user_id
json.quantity order.quantity

json.product do
  json.partial! order.product, partial: 'api/products/product', as: :product
end

json.pricing do 
  json.subtotal number_to_currency(order.subtotal)
  json.tax number_to_currency(order.tax)
  json.total number_to_currency(order.total)
end