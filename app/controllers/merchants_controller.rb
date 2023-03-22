class MerchantsController < InheritedResources::Base

  private

    def merchant_params
      params.require(:merchant).permit(:name)
    end

end
