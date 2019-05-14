class AddSecondaryFeelingIntensityToEmotions < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :secondary_feeling_intensity, :integer
  end
end
