class AddColumnToEvent < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :user, null: true, foreign_key: true
  end
end
