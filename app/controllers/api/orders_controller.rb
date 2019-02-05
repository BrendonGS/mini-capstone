class Api::OrdersController < ApplicationController
    before_action :authenticate_admin, except: [:index, :show]

  def index
      @orders = current_user.orders
      render 'index.json.jbuilder'
  end

  def create
    product = Product.find(params[:product_id])
    calculated_subtotal = params[:quantity].to_i * product.price
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_tax + calculated_subtotal


    @order = Order.new(
                       user_id: current_user.id,
                       subtotal: calculated_subtotal,
                       tax: calculated_tax,
                       total: calculated_total
                      )

    
  end

  def show
    @order = Order.find(params[:id])
    render 'show.json.jbuilder'
  end
end
