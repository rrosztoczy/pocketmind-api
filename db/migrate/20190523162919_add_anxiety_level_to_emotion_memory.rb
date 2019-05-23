class AddAnxietyLevelToEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :emotion_memories, :anxiety_level, :integer
  end
end
