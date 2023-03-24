class ProductimagesController < ApplicationController
   # GET /productimages or /productimages.json
   def index
    @productimages = Productimage.all
  end

  # GET /productimages/1 or /productimages/1.json
  def show
    @productimage = Productimage.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  # GET /productimages/new 
  def new
    @productimage = Productimage.new
    @product = Product.find(params[:product_id])
  end

  # GET /productimages/1/edit
  def edit
    @productimage = Productimage.find(params[:id])
    @product = Product.find(params[:product_id])
  end

  # POST /productimages or /productimages.json
  def create
    # @productimage = Productimage.new(params[:id])
    # @productimage.product_id = params[:product_id]
    # @product = Product.find(params[:product_id])

    # respond_to do |format|
    #   if @productimage.save
    #     format.html { redirect_to product_productimage_url(@product , @productimage), notice: "Productimage was successfully created." }
    #     format.json { render :show, status: :created, location: @productimage }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @productimage.errors, status: :unprocessable_entity }
    #   end
    # end
    
    @product = Product.find(params[:product_id])
    @productimage = @product.productimage.create(productimage_params)
    redirect_to product_path(@product)
  end

  # PATCH/PUT /productimages/1 or /productimages/1.json
  def update
    
    @productimage = Productimage.find(params[:id])
    if @productimage.update(productimage_params)
      redirect_to product_productimage_path
    else
      render :edit
    end
    # respond_to do |format|
    #   if @productimage.update(productimage_params)
    #     format.html { redirect_to productimage_url(@productimage), notice: "Productimage was successfully updated." }
    #     format.json { render :show, status: :ok, location: @productimage }
    #   else
    #     format.html { render :edit, status: :unprocessable_entity }
    #     format.json { render json: @productimage.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /productimages/1 or /productimages/1.json
  def destroy
    @productimage = Productimage.find(params[:id])
    @productimage.destroy

    respond_to do |format|
      format.html { redirect_to product_productimages_url, notice: "Productimage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def remove_image      
    productimage = Productimage.where(id: params[:id]).first
    productimage.image.destroy
    redirect_to @productimage
 end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productimage
      @productimage = Productimage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def productimage_params
      params.require(:productimage).permit(:image,:product_id)
    end
end
