class AddValenceToEmotions < ActiveRecord::Migration[5.2]
  def change
    add_column :emotions, :valence, :integer
  end
end
