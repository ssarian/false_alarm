class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.float :amount
      t.float :amountDue
      t.datetime :paymentDateTime
      t.string :paymentType
      t.string :paymentStatus
      t.integer :fkActionKey
      t.integer :fkCitationkey
      t.integer :fkAcctOwnerKey
      t.integer :fkAlarmKey
      t.integer :fkUserKey

      t.timestamps null: false
    end
  end
end
