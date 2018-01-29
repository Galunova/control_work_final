ActiveAdmin.register Establishment do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :status, :image
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    column :title
    column :description
    column :status
    column :image do |ad|
      image_tag ad.image.url(:thumb)
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      column :title
	    column :description
	    column :status
      f.input :image
    end
    f.actions
  end	
end
