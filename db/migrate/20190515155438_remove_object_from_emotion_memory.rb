class RemoveObjectFromEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    remove_column :emotion_memories, :object, :text
  end
end
