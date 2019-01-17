Rails.application.routes.draw do
  namespace :api do
    get '/first_product' => 'products#product_action'
    get '/all_products' => 'products#all_products'
    get '/card' => 'products#single_item'
  end
end
