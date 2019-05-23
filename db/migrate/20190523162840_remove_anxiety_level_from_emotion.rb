class RemoveAnxietyLevelFromEmotion < ActiveRecord::Migration[5.2]
  def change
    remove_column :emotions, :anxiety_level, :integer
  end
end
