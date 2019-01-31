class Api::ProductsController < ApplicationController


def index
  @products = Product.all

  search_keyword = params[:search]
 
  if search_keyword
    @products = @products.where("name iLIKE ?", "%#{search_keyword}%") # ? to saniitize  
  end

  discount = params[:discount]
    if discount
      @products = @products.where("price < ?", 10)
    end

    sort_attribute = params[:sort] #we can recognize this as a symbol or a key [:sort]
    sort_order = params[:sort_order]

    if sort_attribute && sort_order
    @products = @products.order(sort_attribute => sort_order) #these can be strings or symbols
  elsif sort_attribute
    @products = @products.order(sort_attribute)
    else
    @products = @products.order(:id)
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
    render "show.json.jbuilder"
  else
    render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  end 
end 

def show
  @product = Product.find(params[:id])
  render 'show.json.jbuilder'
end

def update
  @product = Product.find(params[:id])

  product.name = params[:name] || @product.name
  product.price = params[:price] || @product.price
  product.description = params[:description] || @product.description
  product.in_stock = params[:in_stock] || @product.in_stock
  product.supplier_id = params[:supplier_id] || @product.supplier_id


  

  if @product.save
    render 'show.json.jbuilder'
  else
    render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
  end
end

def destroy
  product = Product.find(params[:id])
    product.destroy
    render json: {message: "Successfully removed product."}
end

# def from_hell
#   @products = Products.all
#   render 'from_hell.json.jbuilder'
# end

#find is used only for id's all other that you want to find use find by
#finish new migration, create it, and upload each repository 
# test out in Insomnia
# run local host 
# check controllers
end