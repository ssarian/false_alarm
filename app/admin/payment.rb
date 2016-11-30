ActiveAdmin.register Payment do

  permit_params :amount, :paymentDateTime, :paymentType, :fkPropertyKey

  index do
    selectable_column
    id_column
    column :amount
    column :paymentDateTime
    column :paymentType
    column :fkPropertyKey



    actions
  end

  filter :id
  filter :amount
  filter :paymentDateTime
  filter :paymentType
  filter :fkPropertyKey


  form do |f|
    f.inputs "Account Details" do
      f.input :amount
      f.input :paymentDateTime
      f.input :paymentType, as: :select, collection:['Permit','Fee','Fine']
      f.input :fkPropertyKey


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
