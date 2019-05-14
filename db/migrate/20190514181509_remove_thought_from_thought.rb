class RemoveThoughtFromThought < ActiveRecord::Migration[5.2]
  def change
    remove_column :thoughts, :thought, :text
    remove_column :thoughts, :bias, :text
  end
end
