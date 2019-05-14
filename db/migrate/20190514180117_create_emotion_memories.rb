class CreateEmotionMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :emotion_memories do |t|
      t.integer :intensity
      t.integer :stress_level
      t.references :emotion, foreign_key: true
      t.references :memory, foreign_key: true

      t.timestamps
    end
  end
end
