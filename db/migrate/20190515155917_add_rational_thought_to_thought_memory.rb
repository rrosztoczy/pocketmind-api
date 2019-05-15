class AddRationalThoughtToThoughtMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :thought_memories, :rational_thought, :text
  end
end
