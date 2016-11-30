class CreateTemptables < ActiveRecord::Migration
  def change
    create_table :temptables do |t|
      t.string :f
      t.datetime :initial_call_date_time
      t.integer :cadID
      t.string :alarm_type
      t.string :description
      t.string :permitID
      t.integer :st_num
      t.string :st_direction
      t.string :st_name
      t.string :st_type
      t.string :in_out_bound
      t.integer :campus_num
      t.string :city
      t.date :date_of_processing
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
