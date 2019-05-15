class AddDefaultAnxietyLevelValueToMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :memories, :default_anxiety_level_value, :boolean
  end
end
