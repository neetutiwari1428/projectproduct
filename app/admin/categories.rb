ActiveAdmin.register Categorie do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name ,:image 
  index do
    selectable_column
    id_column
    column :name 
    column :image
    actions
  end

  filter :name 
  filter :image
  

  form do |f|
    f.inputs do
      f.input :name
      f.input :image,as: :file
    end
    f.actions
  end
end
