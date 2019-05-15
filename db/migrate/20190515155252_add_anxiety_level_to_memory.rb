class AddAnxietyLevelToMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :anxiety_level, :integer
  end
end
