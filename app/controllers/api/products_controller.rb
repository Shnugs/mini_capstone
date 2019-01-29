class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    search_keyword = params[:search] 
    if search_keyword
      @products = @products.where("#{search_keyword} iLIKE ?", "%#{search_keyword}%")
    end

    if discount = params[:discount]
      @products = @products.where("price < ?", 2)
    end

    sort_attribute = params[:sort] || [:id]
    sort_order = params[:sort_order] || [:name]

    if sort_attribute and sort_order
      @products = @products.order(sort_attribute => sort_order)
    end

    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                            name: params[:name],
                            price: params[:price],
                            description: params[:description],
                            supplier_id: params[:supplier_id]
                          )
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, 
                   status: :unprocessable_etity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, 
                   status: :unprocessable_etity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: {message: "Exiled Card. Do not pass LTB effects."}
  end

end
