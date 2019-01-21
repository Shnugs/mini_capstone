class Api::ProductsController < ApplicationController
  def index
    @products = MagicCard.all
    render 'index.json.jbuilder'
  end

  def create
    @product = MagicCard.new(
                              name: params[:name],
                              price: params[:price],
                              image_url: params[:image_url],
                              description: params[:description]
                            )
    @product.save
    render 'show.json.jbuilder'
  end

  def show
    @product = MagicCard.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = MagicCard.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    @product.save

    render 'show.json.jbuilder'
  end

  def destroy
    product = MagicCard.find(params[:id])
    product.destroy
    render json: {message: "Successfully sent item to graveyard!"}
  end

end
