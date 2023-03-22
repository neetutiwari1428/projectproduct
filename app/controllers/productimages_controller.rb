class ProductimagesController < InheritedResources::Base

  private

    def productimage_params
      params.require(:productimage).permit(:image, :product_id)
    end

end
