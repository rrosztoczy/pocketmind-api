class AddStressLevelToMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :stress_level, :integer
  end
end
