class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.integer :renting_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
