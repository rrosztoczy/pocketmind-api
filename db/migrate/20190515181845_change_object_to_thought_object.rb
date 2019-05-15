class ChangeObjectToThoughtObject < ActiveRecord::Migration[5.2]
  def change
    rename_column :thought_memories, :object, :thought_object
  end
end
