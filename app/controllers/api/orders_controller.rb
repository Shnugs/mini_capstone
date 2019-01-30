class Api::OrdersController < ApplicationController
  def create
    
    product_object = Product.find(params[:product_id])
    
    @order = Order.new(
                      user_id: current_user.id,
                      product_id: params[:product_id],
                      quantity: params[:quantity],
                      subtotal: product_object.price * params[:quantity].to_i,
                      tax: product_object.tax * params[:quantity].to_i,
                      total: product_object.total * params[:quantity].to_i
                      )

    if @order.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @order.errors.full_messages}, stats: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end

  def index
    @orders = Order.all 
    render 'index.json.jbuilder'
  end
end
