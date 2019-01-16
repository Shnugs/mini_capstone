class Api::ProductsController < ApplicationController
  def item_action
    @card_1 = MagicCard.find(1)
    @card_2 = MagicCard.find(2)
    @card_3 = MagicCard.find(3)
    render 'item_view.json.jbuilder'
  end
end
