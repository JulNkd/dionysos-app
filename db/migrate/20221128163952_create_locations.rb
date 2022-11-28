class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.integer :capacity
      t.float :price
      t.boolean :availabity

      t.timestamps
    end
  end
end
