class AddForeignKeyToFrames < ActiveRecord::Migration[7.0]
  def change
    add_column :frames, :rx_id, :integer, index:true
    add_foreign_key :frames, :rxes
  end
end
