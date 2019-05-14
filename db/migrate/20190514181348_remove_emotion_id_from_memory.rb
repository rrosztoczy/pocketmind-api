class RemoveEmotionIdFromMemory < ActiveRecord::Migration[5.2]
  def change
    remove_column :memories, :emotion_id, :integer
    remove_column :memories, :thought_id, :integer
    remove_column :memories, :physical_id, :integer
    remove_column :memories, :activity_id, :integer
  end
end
