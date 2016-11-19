class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :lastName
      t.string :firstName
      t.string :middleName
      t.string :username
      t.string :position
      t.string :address
      t.string :city
      t.string :state, limit: 2
      t.string :zip, limit: 2
      t.string :officePhone
      t.string :officeExt
      t.string :cellPhone
      t.string :email

      t.timestamps null: false
    end
  end
end
