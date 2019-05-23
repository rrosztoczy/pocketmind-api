class RemoveAnxietyLevelFromMemory < ActiveRecord::Migration[5.2]
  def change
    remove_column :memories, :anxiety_level, :integer
  end
end
