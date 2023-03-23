class MerchantsController < ApplicationController
  def index
    @merchants = Merchant.all
  end
  def new
    @merchant = Merchant.new
  end
  def show
    @merchant = Merchant.find(params[:id])
  end
  def create
    @merchant = Merchant.new(merchant_params)
    if @merchant.save
      redirect_to @merchant
    else
      render :new
    end
  end
  def destroy
    @merchant = Merchant.find(params[:id])
    @merchant.destroy

    redirect_to @merchant
  end
  private

    def merchant_params
      params.require(:merchant).permit(:name)
    end

end
