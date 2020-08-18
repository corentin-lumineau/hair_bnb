class ChangeNameOfColumnTypeToNatureInTableHairs < ActiveRecord::Migration[6.0]
  def change
    remove_column :hairs, :type
    add_column :hairs, :nature, :string
  end
end
