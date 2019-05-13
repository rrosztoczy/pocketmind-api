class CreatePhysicals < ActiveRecord::Migration[5.2]
  def change
    create_table :physicals do |t|
      t.integer :stress_level
      t.string :physical_activity

      t.timestamps
    end
  end
end
