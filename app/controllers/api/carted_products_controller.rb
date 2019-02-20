class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
    @carted_products = current_user.cart # Current user returns a user object
    render 'index.json.jbuilder'   
  end

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


  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.destroy(status: "removed")
    render json: {message: "Successfully removed carted product"}
  end

end
