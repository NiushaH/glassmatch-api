class CreateFrames < ActiveRecord::Migration[7.0]
  def change
    create_table :frames do |t|
      t.string :name
      t.string :style
      t.string :condition
      t.string :image_url
      t.float :OD_SPH
      t.float :OD_CYL
      t.integer :OD_AXIS
      t.float :OD_PRISM
      t.string :OD_BASE
      t.float :OD_ADD
      t.float :OS_SPHERE
      t.float :OS_CYL
      t.integer :OS_AXIS
      t.float :OS_PRISM
      t.string :OS_BASE
      t.float :OS_ADD
      t.integer :average_score

      t.timestamps
    end
  end
end
