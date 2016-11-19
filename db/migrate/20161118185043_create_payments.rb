class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.datetime :paymentDateTime
      t.string :paymentType
      t.integer :fkActionKey
      t.integer :fkCitationkey
      t.integer :fkPropertyKey
      t.integer :fkAlarmKey
      t.integer :fkUserKey

      t.timestamps null: false
    end
  end
end
