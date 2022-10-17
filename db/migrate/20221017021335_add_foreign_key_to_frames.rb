class AddForeignKeyToFrames < ActiveRecord::Migration[7.0]
  def change
    add_reference :frames, :rating, index: true
    add_foreign_key :frames, :ratings
  end
end
