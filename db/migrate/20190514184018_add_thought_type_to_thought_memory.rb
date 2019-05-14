class AddThoughtTypeToThoughtMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :thought_memories, :thought_type, :text
  end
end
