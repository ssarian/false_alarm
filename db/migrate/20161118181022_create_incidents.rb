class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.integer :incidentNum
      t.datetime :incidentDateTime
      t.string :alarmType  #dropdown of valid or false alarm
      t.integer :permitNum  #dropdown of permitIDs and Property Name
      t.string :address
      t.string :city
      t.string :state, limit: 2
      t.string :zip, limit: 5

      t.timestamps null: false
    end
  end
end
