class AddEquibIdToRepair < ActiveRecord::Migration[5.0]
  def change
    add_column :repairs, :equib_id, :integer
  end
end
