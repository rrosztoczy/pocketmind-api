class RemoveStressLevelFromEmotion < ActiveRecord::Migration[5.2]
  def change
    remove_column :emotions, :stress_level, :integer
  end
end
