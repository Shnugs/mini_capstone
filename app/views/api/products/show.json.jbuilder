json.name @product.name
json.price @product.price
json.image_url @product.image_url
json.description @product.description
json.id @product.id

json.pricing_details do 
  json.is_discounted @product.is_discounted?
  json.tax @product.tax
  json.total @product.total(@product.tax)
end