class OrdersController < ApplicationController
  
  def index
    @orders = Order.all
  end

  def show 
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(product_id: Itemcart.find(params[:id])
    .product.id, merchant_id: current_merchant.id, itemcart_id: params[:id], status:"pending")
    if @order.save
      redirect_to orders_path, notice: "Order placed successfully"
    else
      render :new
    end
  end
  private

    def order_params
      params.require(:order).permit(:status, :merchant_id, :product_id, :itemcart_id)
    end

end
