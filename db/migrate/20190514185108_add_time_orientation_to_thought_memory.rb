class AddTimeOrientationToThoughtMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :thought_memories, :time_orientation, :text
  end
end
