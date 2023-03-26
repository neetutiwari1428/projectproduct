ActiveAdmin.register Wishlist do

    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    # Uncomment all parameters which should be permitted for assignment
    #
    # permit_params :userid, :name, :price, :status, :categorie_id, :image, :description
    #
    # or
    #
    # permit_params do
    #   permitted = [:userid, :name, :price, :status, :categorie_id, :image, :description]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    permit_params :product_id,:merchant_id
    index do
      selectable_column
      id_column
      column :product_id
      column :merchant_id
      actions
    end
    filter :product_id
    filter :merchant_id
    
    form do |f|
      f.inputs do 
        f.input :product_id
        f.input :merchant_id
      end
      f.actions
    end
  end
  