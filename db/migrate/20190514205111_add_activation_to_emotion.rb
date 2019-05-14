class AddActivationToEmotion < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :activation, :integer
  end
end
