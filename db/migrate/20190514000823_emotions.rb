class Emotions < ActiveRecord::Migration[5.2]
  def change
    change_column :emotions, :feeling, :text
    change_column :emotions, :mood, :text
    add_column :emotions, :mood_intensity, :integer
    add_column :emotions, :mood_valence, :integer
  end
end
