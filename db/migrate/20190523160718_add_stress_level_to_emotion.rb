class AddStressLevelToEmotion < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :stress_level, :integer
  end
end
