ActiveAdmin.register Idproof do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :document, :status, :merchant_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :document, :status, :merchant_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :name ,:document ,:status ,:merchant_id
  index do
    selectable_column
    id_column
    column :name 
    column :document
    column :status
    column :merchant_id
    actions
  end

  filter :name 
  filter :document
  filter :status
  filter :merchant_id

  form do |f|
    f.inputs do
      f.input :name
      f.input :document,as: :file
      f.input :status,as: :select,:collection => (["Accept","Pending","Reject"])
      f.input :merchant_id
    end
    f.actions
  end
end
