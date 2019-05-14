class ChangeFeelingToAffect < ActiveRecord::Migration[5.2]
  def change
    rename_column :emotions, :feeling, :emotion
    add_column :emotion_memories, :object, :text
  end
end
