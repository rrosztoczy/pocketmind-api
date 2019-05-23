class AddStressLevelToEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :emotion_memories, :stress_level, :integer
  end
end
