class AddDefaultPleasureValueToEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :emotion_memories, :default_pleasure_value, :boolean
  end
end
