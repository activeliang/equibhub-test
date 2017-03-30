class CreateRepairs < ActiveRecord::Migration[5.0]
  def change
    create_table :repairs do |t|
      t.string :cause
      t.integer :fees

      t.timestamps
    end
  end
end
