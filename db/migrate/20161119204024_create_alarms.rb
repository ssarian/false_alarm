class CreateAlarms < ActiveRecord::Migration
  def change
    create_table :alarms do |t|
      t.integer :permitNum
      t.date :beginDate
      t.date :endDate
      t.date :installDate
      t.float :amtDue
      t.datetime :renewalDateTime
      t.text :note
      t.integer :fkPropertyKey
      t.integer :fkAcctOwnerKey
      t.integer :fkStatusKey
      t.integer :fkUserKey
      t.integer :fkFaSiteTypeKey

      t.timestamps null: false
    end
  end
end
