class CreateCitationTrans < ActiveRecord::Migration
  def change
    create_table :citation_trans do |t|
      t.datetime :transDateTime
      t.integer :fkCitationKey
      t.integer :fkActionKey
      t.integer :fkTemplateKey
      t.integer :fkUserKey

      t.timestamps null: false
    end
  end
end
