class ProductsController < ApplicationController
  def index
    @products = Product.all
    # @products = Product.where(merchant_id: current_merchant.id)
  end 
  def new
    @product = Product.new
  end
  def show
    @product = Product.find(params[:id])
  end
  def create
    # debugger
    @product = Product.new(product_params)
    @product.merchant_id = current_merchant.id
    if @product.save
      redirect_to @product
    else
      render :new
    end
  end
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to @product
  end
  private

    def product_params
      params.require(:product).permit( :name, :price, :status, :categorie_id,:merchant_id ,:image, :description)
    end

end
