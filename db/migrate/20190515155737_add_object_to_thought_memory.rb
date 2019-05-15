class AddObjectToThoughtMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :thought_memories, :object, :text
  end
end
