class IdproofsController < ApplicationController
  def index
    @idproofs = Idproof.all
  end
  def new
    @idproof = Idproof.new
  end
  def show
    @idproof = Idproof.find(params[:id])
  end
  def create
    @idproof.merchant_id = current_merchant.id 
    @idproof = Idproof.new(idproof_params)
    if @idproof.save
      redirect_to @idproof
    else
      render :new
    end
  end
  def destroy
    @idproof = Idproof.find(params[:id])
    @idproof.destroy

    redirect_to root_path
  end
  def update

  end
  def edit

  end
  private

  def idproof_params
    params.require(:idproof).permit(:name, :document, :status)
  end

end
