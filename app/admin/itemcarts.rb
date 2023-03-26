ActiveAdmin.register Itemcart do

    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    # Uncomment all parameters which should be permitted for assignment
    #
    # permit_params :name
    #
    # or
    #
    # permit_params do
    #   permitted = [:name]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
    permit_params :qnty,:product_id,:merchant_id,:size 
    index do
      selectable_column
      id_column
      column :qnty
      column :size
      column :product_id 
      column :merchant_id
      
      actions
    end
  
    filter :qnty
    filter :size
    filter :product_id 
    filter :merchant_id
    
  
    form do |f|
      f.inputs do
        f.input :qnty
        f.input :size
      end
      f.actions
    end
  end
  