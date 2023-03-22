class ProductsController < InheritedResources::Base
  def index
    # @products = Product.all
    # @products = Product.where("status = true")
    @products = Product.where("status LIKE ? ", "%#{params[:status]}%")
    # if params[:status].present?
    #   @products = Product.where("status" = "Active")
    # elsif
    #   @products = Product.where("status" = "Inactive")
    # else
    #   @products = Product.all
    # end

  end 
 
  private

    def product_params
      params.require(:product).permit( :name, :price, :status, :categorie_id,:merchant_id ,:image, :description)
    end

end
