class AddActivityToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :activity, :text
  end
end
