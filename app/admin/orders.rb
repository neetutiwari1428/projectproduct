ActiveAdmin.register Order do

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
    permit_params :status, :product_id, :merchant_id, :cart_id  
    index do
      selectable_column
      id_column
      column :status
      column :product_id 
      column :merchant_id
      column :cart_id
      actions
    end
  
    filter :status
    filter :product_id 
    filter :merchant_id
    filter :cart_id
    
    
  
    form do |f|
      f.inputs do
        f.input :status,as: :select,:collection => (["Completed","Pending","Shipped"])
        f.input :product_id 
        f.input :merchant_id
        f.input :cart_id 
      end
      f.actions
    end
  end
  