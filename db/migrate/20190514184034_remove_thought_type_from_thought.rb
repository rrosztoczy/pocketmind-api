class RemoveThoughtTypeFromThought < ActiveRecord::Migration[5.2]
  def change
    remove_column :thoughts, :thought_type, :text
  end
end
