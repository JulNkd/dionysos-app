class CreateSpendings < ActiveRecord::Migration[7.0]
  def change
    create_table :spendings do |t|
      t.float :amount
      t.string :category
      t.date :date
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
