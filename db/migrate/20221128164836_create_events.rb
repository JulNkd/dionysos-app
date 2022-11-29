class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :category
      t.text :description
      t.string :address
      t.string :album
      t.string :title

      t.timestamps
    end
  end
end
