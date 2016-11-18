class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :propertyName
      t.string :address
      t.string :city
      t.string :state, limit: 2
      t.string :zip
      t.integer :fkAcctOwner

      t.timestamps null: false
    end
  end
end
