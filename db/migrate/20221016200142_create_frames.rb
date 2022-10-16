class CreateFrames < ActiveRecord::Migration[7.0]
  def change
    create_table :frames do |t|
      t.string :name
      t.string :style
      t.string :condition
      t.string :image_url

      t.timestamps
    end
  end
end
