class AddPleasureToEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :emotion_memories, :pleasure, :integer
  end
end
