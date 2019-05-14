class AddSecondaryFeelingToEmotions < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :secondary_feeling, :text
  end
end
