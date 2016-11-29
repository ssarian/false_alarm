class CreateTemptables < ActiveRecord::Migration
  def change
    create_table :temptables do |t|
      t.string :f_name
      t.integer :emp_number

      t.timestamps null: false
    end
  end
end
