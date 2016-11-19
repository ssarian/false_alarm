class CreateIncidentAlarms < ActiveRecord::Migration
  def change
    create_table :incident_alarms do |t|
      t.datetime :importDateTime

      t.timestamps null: false
    end
  end
end
