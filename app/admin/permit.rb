ActiveAdmin.register Permit do

  permit_params :firstName, :lastName, :middleName

  index do
    selectable_column
    id_column
    column :firstName
    column :lastName


    actions
  end

  filter :firstName
  filter :acctNum

  form do |f|
    f.inputs "Account Details" do
      f.input :firstName
      f.input :lastName
      f.input :middleName
    end
    f.actions
  end
end
