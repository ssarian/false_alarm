class CreateFaSiteTypes < ActiveRecord::Migration
  def change
    create_table :fa_site_types do |t|
      t.text :description
      t.text :siteCode, limit: 1

      t.timestamps null: false
    end
  end
end
