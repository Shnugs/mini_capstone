class Api::ProductsController < ApplicationController
  def product_action
    @card = MagicCard.first
    render 'product_view.json.jbuilder'
  end

  def all_products
    @products = MagicCard.all 
    render 'all_products.json.jbuilder'
  end

  def single_item
    card_id = params[:id].to_i
    @card = MagicCard.find(card_id)
    render 'product_view.json.jbuilder'
  end

end
