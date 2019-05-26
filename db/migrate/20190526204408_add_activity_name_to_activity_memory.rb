class AddActivityNameToActivityMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :activity_memories, :activity_name, :string
  end
end
