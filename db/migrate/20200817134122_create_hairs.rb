class CreateHairs < ActiveRecord::Migration[6.0]
  def change
    create_table :hairs do |t|
      t.string :title
      t.text :description
      t.string :color
      t.string :type
      t.integer :quantity
      t.integer :hair_length
      t.string :status
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
