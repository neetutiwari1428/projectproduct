ActiveAdmin.register Product do

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
  permit_params :categorie_id, :name ,:description,:image,:price ,:status
  index do
    selectable_column
    id_column
    column :categorie_id
    column :name 
    column :description
    column :image
    column :price
    column :status
    actions
  end
  filter :categorie_id
  filter :name 
  filter :description
  filter :image
  filter :price
  filter :status
  
  form do |f|
    f.inputs do 
      f.input :categorie, as: :select,:collection => (Categorie.pluck(:name)) 
      f.input :name 
      f.input :description
      f.input :price
      f.input :image,as: :file
      f.input :status,as: :select,:collection => (["active","inactive","draft"])
    end
    f.actions
  end
end
