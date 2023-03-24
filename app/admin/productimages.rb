ActiveAdmin.register Productimage do

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
    permit_params :image ,:product_id 
    index do
      selectable_column
      id_column
      column :image
      column :product_id 
      
      
      actions
    end
  
    filter :image 
    filter :product_id 
    
    
  
    form do |f|
      f.inputs do
        f.input :image,as: :file
        f.input :product_id 
       
        
      end
      f.actions
    end
  end
  