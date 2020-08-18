class ChangeStatusToBooleanIntoHairs < ActiveRecord::Migration[6.0]
  def change
    remove_column :hairs, :status
    add_column :hairs, :status, :boolean, default: true
  end
end
