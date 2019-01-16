Rails.application.routes.draw do
  namespace :api do
    get "/item_1" => "products#item_action"
  end
end
