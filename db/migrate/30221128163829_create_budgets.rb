class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.float :initial_budget
      t.float :remaining_budget
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
