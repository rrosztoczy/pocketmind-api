class AddScientificValenceToEmotion < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :scientific_valence, :integer
  end
end
