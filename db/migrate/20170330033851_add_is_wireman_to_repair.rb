class AddIsWiremanToRepair < ActiveRecord::Migration[5.0]
  def change
    add_column :repairs, :is_wireman, :boolean, default: false
  end
end
