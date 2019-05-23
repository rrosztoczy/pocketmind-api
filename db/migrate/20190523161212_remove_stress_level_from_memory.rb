class RemoveStressLevelFromMemory < ActiveRecord::Migration[5.2]
  def change
    remove_column :memories, :stress_level, :integer
  end
end
