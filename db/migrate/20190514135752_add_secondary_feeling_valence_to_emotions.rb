class AddSecondaryFeelingValenceToEmotions < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :secondary_feeling_valence, :integer
  end
end
