class ProductimagesController < ApplicationController
  def index
    @productimages = Productimage.all
  end
  def new
    @productimage = Productimage.new
  end
  def show
    @productimage = Productimage.find(params[:id])
  end
  def create
    # @productimage = Productimage.new(productimage_params)
    # if @productimage.save
    #   redirect_to @productimage
    # else
    #   render :new
    # end
    @product = Product.find(params[:product_id])
    @productimage = @product.productimages.create(productimage_params)
    redirect_to product_path(@product)
  end
  def destroy
    @productimage = Productimage.find(params[:id])
    @productimage.destroy

    redirect_to @productimage
  end
  private

    def productimage_params
      params.require(:productimage).permit(:image, :product_id)
    end

end
