if current_user
  json.current_user current_user.email
end

json.partial! @product, partial: "product", as: :product
