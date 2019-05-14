class RemoveActivityNameFromActivityMemory < ActiveRecord::Migration[5.2]
  def change
    remove_column :activity_memories, :activity_name, :text
  end
end
