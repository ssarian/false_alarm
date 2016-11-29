class CreateFaSiteTypes < ActiveRecord::Migration
  def change
    create_table :fa_site_types do |t|
      t.text :description
      t.string :siteCode

      t.timestamps null: false
    end
  end
end
