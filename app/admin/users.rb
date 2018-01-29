ActiveAdmin.register User do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :surname, :email, :status, :role
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
	index do
    column :name
    column :surname
    column :email
    column :status
    column :role
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      column :name
	    column :surname
	    column :email
	    column :status
	    column :role
    end
    f.actions
  end
end
