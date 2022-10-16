class AddForeignKeyToRxes < ActiveRecord::Migration[7.0]
  def change
    add_column :rxes, :frame_id, :integer, index:true
    add_foreign_key :rxes, :frames
  end
end
