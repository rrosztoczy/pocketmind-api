class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.references :user, foreign_key: true
      t.references :emotion, foreign_key: true
      t.references :thought, foreign_key: true
      t.references :physical, foreign_key: true
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
