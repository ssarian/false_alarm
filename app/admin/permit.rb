ActiveAdmin.register Permit do

  permit_params :firstName, :lastName, :middleName

  index do
    selectable_column
    id_column
    column :permitStartDate
    column :permitExpDate
    column :fkPropertyKey
    column :status
    column :siteType
    column :note
    column :amountDue

    actions
  end

  filter :permitStartDate
  filter :permitExpDate
  filter :fkPropertyKey
  filter :status
  filter :siteType
  filter :note
  filter :amountDue

  form do |f|
    f.inputs "Account Details" do
      f.input :permitStartDate
      f.input :permitExpDate
      f.input :fkPropertyKey, as: :select, :collection => Property.all.map{|u| ["#{u.id}, #{u.propertyName}", u.id]}
      f.input :fkStatusKey, as: :select, :collection => Status.all.map{|u| ["#{u.description}", u.id]}
      f.input :siteType, as: :select, collection:['Site A','Site B','Site C']
      f.input :note
      f.input :amountDue
    end
    f.actions
  end
end