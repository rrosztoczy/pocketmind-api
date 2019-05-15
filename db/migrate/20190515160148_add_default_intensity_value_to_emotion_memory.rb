class AddDefaultIntensityValueToEmotionMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :emotion_memories, :default_intensity_value, :boolean
  end
end
