class RemoveActivityNameFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :activity_name, :string
  end
end
