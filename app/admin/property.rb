ActiveAdmin.register Property do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :propertyName, :address, :city, :state, :zip, :fkAcctOwner

    index do
      selectable_column
      id_column
      column :propertyName
      column :address
      column :city
      column :state
      column :zip
      column :fkAcctOwner


      actions
    end

    filter :id
    filter :propertyName
    filter :address
    filter :city
    filter :state
    filter :zip

    form do |f|
      f.inputs "Account Details" do
        f.input :propertyName
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


