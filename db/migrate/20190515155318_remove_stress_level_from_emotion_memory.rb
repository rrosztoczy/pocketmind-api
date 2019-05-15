class RemoveStressLevelFromEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    remove_column :emotion_memories, :stress_level, :integer
  end
end
