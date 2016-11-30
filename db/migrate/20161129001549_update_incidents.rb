class UpdateIncidents < ActiveRecord::Migration
  def change
    add_column :incidents, :alarmType, :string
  end
end
