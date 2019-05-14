class DropPhysicals < ActiveRecord::Migration[5.2]
  def change
    drop_table :physicals
  end
end
