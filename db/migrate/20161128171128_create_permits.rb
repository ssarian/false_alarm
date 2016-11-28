class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.integer :permitNum
      t.date :permitStartDate
      t.date :permitExpDate
      t.integer :amountDue
      t.string :siteType #this is the amount of false alarms you can have
      t.string :note
      t.integer :fkPropertyKey
      t.integer :fkAlarmKey
      t.integer :fkUserKey
      t.integer :fkPaymentKey
      t.integer :fkStatusKey

      t.timestamps null: false
    end
  end
end
