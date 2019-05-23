class AddCognitiveBiasToThoughtMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :thought_memories, :cognitive_bias, :text
  end
end
