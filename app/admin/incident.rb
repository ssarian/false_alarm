ActiveAdmin.register Incident do
  permit_params :incidentDateTime, :alarmType, :permitNum, :address, :city, :state, :zip

  index do
    selectable_column
    id_column
    column :incidentDateTime
    column :alarmType
    column :permitNum
    column :address
    column :city
    column :state
    column :zip


    actions
  end

  filter :id
  filter :incidentDateTime
  filter :alarmType
  filter :permitNum
  filter :address
  filter :city
  filter :state
  filter :zip

  form do |f|
    f.inputs "Account Details" do
      f.input :incidentDateTime
      f.input :alarmType
      f.input :permitNum
      f.input :address
      f.input :city
      f.input :state
      f.input :zip


    end
    f.actions
  end
end
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

