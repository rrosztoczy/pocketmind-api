class AddActivityTypeToActivityMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :activity_memories, :activity_type, :string
  end
end
