class AddReasonToThoughtMemory < ActiveRecord::Migration[5.2]
  def change
    add_column :thought_memories, :reason, :text
  end
end
