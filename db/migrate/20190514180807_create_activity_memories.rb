class CreateActivityMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_memories do |t|
      t.text :activity_name
      t.text :activity_status
      t.datetime :activity_start_time
      t.datetime :activity_end_time
      t.text :activity_source
      t.references :activity, foreign_key: true
      t.references :memory, foreign_key: true

      t.timestamps
    end
  end
end
