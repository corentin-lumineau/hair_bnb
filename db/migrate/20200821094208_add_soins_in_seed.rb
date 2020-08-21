class AddSoinsInSeed < ActiveRecord::Migration[6.0]
  def change
    add_column :hairs, :soins, :text
  end
end
