class AddScientificActivationToEmotion < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :scientific_activation, :integer
  end
end
