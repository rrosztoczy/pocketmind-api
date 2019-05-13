class CreateThoughts < ActiveRecord::Migration[5.2]
  def change
    create_table :thoughts do |t|
      t.string :category
      t.string :thought
      t.string :bias

      t.timestamps
    end
  end
end
