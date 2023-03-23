class CategoriesController < ApplicationController
   def index
   @categories = Categorie.all
   end
   def show
    @categorie = Categorie.find(params[:id])
   end
   def new
    @categorie = Categorie.new
   end
   def create
    @categorie = Categorie.find(categorie_params)
    if @categorie.save
      redirect_to @categorie
    else
      render :new
    end
   end
  private

    def categorie_params
      params.require(:categorie).permit(:name, :image)
    end

end
