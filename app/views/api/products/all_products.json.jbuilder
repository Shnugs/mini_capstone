json.array! @products.each do |product|
  json.name_1 product.name
  json.price_1 product.price
  json.image_url_1 product.image_url
  json.description_1 product.description
end