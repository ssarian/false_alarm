class CreatePermits < ActiveRecord::Migration
  def change
    create_table :permits do |t|
      t.integer :permitNum
      t.string :permitType
      t.date :permitStartDate
      t.date :permitExpDate
      t.integer :fkPropertyKey
      t.integer :fkAlarmKey
      t.integer :fkUserKey
      t.integer :fkPaymentKey

      t.timestamps null: false
    end
  end
end
