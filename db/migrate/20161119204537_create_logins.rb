class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.datetime :loginDateTime
      t.integer :fkUserKey

      t.timestamps null: false
    end
  end
end
