ActiveAdmin.register Review do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :review_comment, :feed_rate, :service_rate, :atmosphere_rate
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  index do
    column :review_comment
    column :feed_rate
    column :service_rate
    column :atmosphere_rate
    actions
  end

  form do |f|
    f.inputs do
      f.input :review_comment
	    column :review_comment
	    column :feed_rate
	    column :service_rate
	    column :atmosphere_rate
      f.input :image
    end
    f.actions
  end
end
