class RemoveStatusFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :status, :boolean
  end
end
