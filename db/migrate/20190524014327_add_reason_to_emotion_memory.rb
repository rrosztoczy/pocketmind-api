class AddReasonToEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :emotion_memories, :reason, :text
  end
end
