class AddDefaultStressLevelValueToMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :default_stress_level_value, :boolean
  end
end
