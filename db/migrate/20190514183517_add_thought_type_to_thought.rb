class AddThoughtTypeToThought < ActiveRecord::Migration[5.2]
  def change
    add_column :thoughts, :thought_type, :text
  end
end
