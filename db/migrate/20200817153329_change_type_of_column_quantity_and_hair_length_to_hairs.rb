class ChangeTypeOfColumnQuantityAndHairLengthToHairs < ActiveRecord::Migration[6.0]
  def change
    change_column :hairs, :quantity, :string 
    change_column :hairs, :hair_length, :string
  end
end
