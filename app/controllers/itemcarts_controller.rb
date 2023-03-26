class ItemcartsController < ApplicationController
  def index
    @itemcarts = Itemcart.all
  end

  def create
    @itemcart = Itemcart.new(itemcart_params)
    @itemcart.merchant_id = current_merchant.id
    @itemcart.product_id = params[:product_id]
    if @itemcart.save
      redirect_to @itemcart ,notice: "items successfully added to cart"
    else
      render :new
    end
  end

  def new
    @itemcart = Itemcart.new
  end

  def show
    @itemcart = Itemcart.find(params[:id])
  end

  def cart
    @cart = Itemcart.new(product_id: params[:id],merchant_id: current_merchant.id,qnty:1,size:"XS")
    @cart.save!
    redirect_to products_path,notice:"Successfully added to cart"
  end

  # def total 
  #   @price = 
  # end
  def destroy
    @itemcart = Itemcart.find(params[:id])
    @itemcart.destroy
    redirect_to itemcarts_path,notice: "Removed successfully"
  end
  private

    def itemcart_params
      params.require(:itemcart).permit(:qnty, :size, :product_id, :merchant_id)
    end

end
