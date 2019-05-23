class AddAnxietyLevelToEmotion < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :anxiety_level, :integer
  end
end
