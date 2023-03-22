class IdproofsController < InheritedResources::Base

  private

    def idproof_params
      params.require(:idproof).permit(:name, :document, :status, :merchant_id)
    end

end
