class AddTimeOfMemoryToMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :time_of_memory, :datetime
  end
end
