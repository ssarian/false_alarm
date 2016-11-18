class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.integer :citationNum
      t.datetime :violationDateTime
      t.integer :violationNum
      t.string :alarmRegistered
      t.integer :fkAcctOwnerKey
      t.integer :fkStatusKey
      t.integer :fkCadAlarm
      t.integer :fkPropertyKey
      t.integer :fkAlarmKey
      t.integer :fkFaSiteTypeKey

      t.timestamps null: false
    end
  end
end
