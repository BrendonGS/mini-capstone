class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  # def index
  #   @carted_products = current_user.carted_prodcuts.where(status: "carted")
  #   render 'index.json.jbuilder'   
  # end

  def create
    @carted_product = CartedProduct.new(
                                          product_id: params[:product_id],
                                          quantity: params[:quantity],
                                          user_id: current_user.id,
                                          status: "carted"
                                          )
    @carted_product.save
    render 'show.json.jbuilder'
  end



  # def index
  #   @carted_products
  #     render 'index.json.jbuilder'
  # end

end
