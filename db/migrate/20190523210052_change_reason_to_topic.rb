class ChangeReasonToTopic < ActiveRecord::Migration[5.2]
  def change
    rename_column :thought_memories, :reason, :topic
  end
end
