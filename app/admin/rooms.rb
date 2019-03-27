ActiveAdmin.register Room do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :hotel_id, :title, :description, photos: []

form html: { multipart: true } do |f|
   f.semantic_errors

   f.inputs do
     f.input :hotel_id, :label => "Hotel", :as => :select, :collection => Hotel.all.map{|u| ["#{u.title}", u.id]}
     f.input :title
     f.input :photos, as: :file, input_html: { multiple: true }
     f.input :description
   end
   actions
 end

end
