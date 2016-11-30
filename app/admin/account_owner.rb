ActiveAdmin.register AccountOwner do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :firstName, :lastName, :middleName, :address, :city, :state, :zip, :homePhone, :workPhone, :cellphone, :email

  index do
  selectable_column
  id_column
  column :firstName
  column :lastName
  column :middleName
  column :address
  column :city
  column :state
  column :zip
  column :homePhone
  column :workPhone
  column :cellphone
  column :email


  actions
end

filter :id
filter :firstName
filter :lastName
filter :middleName
filter :address
filter :city
filter :state
filter :zip
filter :homePhone
filter :workPhone
filter :cellphone
filter :email

form do |f|
  f.inputs "Account Details" do
    f.input :firstName
    f.input :lastName
    f.input :middleName
    f.input :address
    f.input :city
    f.input :state
    f.input :zip
    f.input :homePhone
    f.input :workPhone
    f.input :cellphone
    f.input :email


  end
  f.actions
end
end


