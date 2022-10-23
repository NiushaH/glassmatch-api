class RemoveAttributesFromFrame < ActiveRecord::Migration[7.0]
  def change
    remove_column :frames, :OD_SPH, :float
    remove_column :frames, :OD_CYL, :float
    remove_column :frames, :OD_AXIS, :integer
    remove_column :frames, :OD_PRISM, :float
    remove_column :frames, :OD_BASE, :string
    remove_column :frames, :OD_ADD, :float
    remove_column :frames, :OS_SPHERE, :float
    remove_column :frames, :OS_CYL, :float
    remove_column :frames, :OS_AXIS, :integer
    remove_column :frames, :OS_PRISM, :float
    remove_column :frames, :OS_BASE, :string
    remove_column :frames, :OS_ADD, :float
  end
end
