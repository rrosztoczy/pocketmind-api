class CreateThoughtMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :thought_memories do |t|
      t.text :thought_content
      t.references :thought, foreign_key: true
      t.references :memory, foreign_key: true

      t.timestamps
    end
  end
end
