class ChangeProgressName < ActiveRecord::Migration[5.2]
  def change
    rename_column :activities, :progress, :status
    rename_column :thoughts, :category, :thought_category
    remove_column :emotions, :secondary_feeling
    remove_column :emotions, :secondary_feeling_intensity
    remove_column :emotions, :secondary_feeling_valence
    remove_column :emotions, :mood
    remove_column :emotions, :mood_intensity
    remove_column :emotions, :mood_valence
  end
end
