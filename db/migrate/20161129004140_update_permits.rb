class UpdatePermits < ActiveRecord::Migration
  def change
    remove_column :permits, :permitType
    add_column :permits, :amountDue, :integer
    add_column :permits, :siteType, :string
    add_column :permits, :note, :string
    add_column :permits, :fkStatusKey, :integer
  end

end

