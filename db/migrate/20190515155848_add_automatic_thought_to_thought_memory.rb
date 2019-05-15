class AddAutomaticThoughtToThoughtMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :thought_memories, :automatic_thought, :text
  end
end
