class CreateAccountOwners < ActiveRecord::Migration
  def change
    create_table :account_owners do |t|
      t.integer :acctNum
      t.string :firstName
      t.string :lastName
      t.string :middleName
      t.string :address
      t.string :city
      t.string :state, limit: 2
      t.string :zip, limit: 5
      t.string :homePhone
      t.string :workPhone
      t.string :cellphone
      t.string :email

      t.timestamps null: false
    end
  end
end
