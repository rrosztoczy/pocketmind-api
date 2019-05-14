class AddIntensityToEmotions < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :intensity, :integer
  end
end
