class CategoriesController < InheritedResources::Base
   def index
   @categories = Categorie.all
   end
  private

    def categorie_params
      params.require(:categorie).permit(:name, :image)
    end

end
