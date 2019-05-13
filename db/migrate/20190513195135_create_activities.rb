class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :activity_category
      t.string :activity_name
      t.boolean :progress

      t.timestamps
    end
  end
end
